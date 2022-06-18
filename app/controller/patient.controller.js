const db = require("../models/model");
const Patients = db.patients;
const Psychiatrists = db.psychiatrists
const Op = db.Sequelize.Op;
const path = require('path')
exports.create = async (req, res) => {
    var condition = req.body.psychiatrist_id ? { id: req.body.psychiatrist_id } : null;
    let doc_record = await Psychiatrists.findAll({ where: condition })
    try {
        if (doc_record.length > 0) {
            // Create a Patient
            let patient = {
                name: req.body.name,
                address: req.body.address,
                email: req.body.email,
                password: req.body.password,
                psychiatristId: doc_record[0].id
            };
            // Save Patient in the database
            let patient_record = await Patients.findAll({ where: patient })

            if (patient_record.length > 0) {
                res.status(200).send({
                    message: "Record already exist"
                }
                );
            } else {
                patient = {
                    name: req.body.name,
                    address: req.body.address,
                    email: req.body.email,
                    phone_number: req.body.phone_number,
                    password: req.body.password,
                    photo: req.file.originalname,
                    hospitalId: doc_record[0].hospitalId,
                    psychiatristId: doc_record[0].id
                };
                Patients.create(patient)
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
            res.status(500).send({
                message: "No Psychiatrist found by this is Name"
            }
            );
        }

    }
    catch (err) {
        console.log(err)
        res.status(500).send({
            message:
                err.message || "Some error occurred while retrieving hospital details."
        });
    }

};
exports.findPatientsByPsychiatristId = async (req, res) => {
    console.log(req.params.psychiatristId)
    const doc_id = { psychiatristId: req.params.psychiatristId };
    try {
        let patient_records = await Patients.findAll({ where: doc_id })
        let patient_result = []
        if (patient_records.length > 0) {
            patient_records.map((patient) => {
                let record = {
                    id: patient.id,
                    name: patient.name,
                    address: patient.address,
                    email: patient.email,
                    phone_number: patient.phone_number,
                    password: patient.password
                }
                patient_result.push(record)
            })
            res.send(200, { patient_list: patient_result })
        } else {
            res.send(200, { patient_list: null })
        }
    }
    catch (err) {
        res.status(500).send({
            message:
                err.message || "Some error occurred while retrieving patients."
        });
    }
};
