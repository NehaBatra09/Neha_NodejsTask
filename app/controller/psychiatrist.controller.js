const db = require("../models/model");
const Psychiatrists = db.psychiatrists;
const Hospitals = db.hospitals;
const Patients = db.patients;
const Op = db.Sequelize.Op;
exports.create = async (req, res) => {

    var condition = req.body.hspt_name ? { name: req.body.hspt_name } : null;
    let hos_record = await Hospitals.findAll({ where: condition })
    try {
        if (hos_record.length > 0) {
            // Create a Patient
            let hspt_id = hos_record[0].id

            // Save Patient in the database
            let psychiatrist = {
                first_name: req.body.fname,
                last_name: req.body.lname,
                hospitalId: hspt_id,
                hospital_name: req.body.hspt_name,
            };
            let record = await Psychiatrists.findAll({ where: psychiatrist })
            if (record.length > 0) {
                res.status(200).send({
                    message: "Record already exist"
                })
            } else {
                let psychiatrist = {
                    first_name: req.body.fname,
                    last_name: req.body.lname,
                    hospitalId: hspt_id,
                    hospital_name: req.body.hspt_name,
                    phone_number: req.body.phone_number,
                    pincode: req.body.pincode,
                    state: req.body.state,
                };
                Psychiatrists.create(psychiatrist)
                    .then(data => {
                        res.send(data);
                    })
                    .catch(err => {
                        let error = JSON.stringify(err.message).split(",\\n")
                        error = error.map((err) => err.replace("\"", ""))

                        res.status(500).send({
                            message: error
                        }
                        );
                    });
            }
        } else {
            res.send(200, { status: "Hospital By This Name is not Available", result: null });
        }


    } catch (err) {
        res.status(500).send({
            message:
                err.message || "Some error occurred while retrieving hospital details."
        });
    };

};

exports.findCountOfAllPatients = (req, res) => {
    Psychiatrists.findAll(
        {
            attributes: ["first_name", "hospital_name", [db.Sequelize.fn("COUNT", db.Sequelize.col("patients.id")), "patientCount"]],

            include: [{
                model: Patients, attributes: [],
                as: "patients",

            }],
            group: ['psychiatrists.id']
        }
    )
        .then(data => {
            console.log(data)
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message:
                    err.message || "Some error occurred while retrieving doctors."
            });
        });
};
