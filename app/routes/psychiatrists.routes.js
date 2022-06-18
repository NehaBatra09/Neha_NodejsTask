module.exports = app => {
    const psychiatrist = require("../controller/psychiatrist.controller");
    var router = require("express").Router();
    router.post("/", psychiatrist.create);
    router.get("/patients", psychiatrist.findCountOfAllPatients);
    app.use('/api/psychiatrists', router);
};