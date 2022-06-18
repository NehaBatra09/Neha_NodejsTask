const { patients } = require("../models/model");
const db = require("../models/model");
const Hospitals = db.hospitals;
const Op = db.Sequelize.Op;
exports.create = (req, res) => {
    console.log("---------" + req.body.name + "---------------")
    if (!req.body.name) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
        return;
    }
    // Create a Hospital
    const hospital = {
        name: req.body.name,
    };
    // Save Hospital detail in the database
    Hospitals.create(hospital)
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the Hospital."
            });
        });
};
