module.exports = app => {
    const hospital = require("../controller/hospital.controller");

    var router = require("express").Router();
    router.post("/", hospital.create);
    app.use('/api/hospitals', router);
};