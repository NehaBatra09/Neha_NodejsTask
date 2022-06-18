module.exports = app => {
    const patient = require("../controller/patient.controller.js");
    var router = require("express").Router();
    router.post("/", patient.create);
    router.get("/:psychiatristId", patient.findPatientsByPsychiatristId)
    app.use('/api/patients', router);
};