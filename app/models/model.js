const dbConfig = require("../../db.config.js");
const { Sequelize, DataTypes } = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,
    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        acquire: dbConfig.pool.acquire,
        idle: dbConfig.pool.idle
    },


    logging: false
});
const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.hospitals = require("./hospitals.model.js")(sequelize, DataTypes);
db.patients = require("./patients.model.js")(sequelize, DataTypes);
db.psychiatrists = require("./psychiatrist.model.js")(sequelize, DataTypes);

db.hospitals.hasMany(db.psychiatrists, { as: 'psychiatrists' })
db.hospitals.hasMany(db.patients, { as: 'patients' })
db.psychiatrists.hasMany(db.patients, { as: "patients" })
db.psychiatrists.belongsTo(db.hospitals, {
    foreignKey: "hospitalId",

});
db.patients.belongsTo(db.psychiatrists, {
    foreignKey: "psychiatristId",
    as: "psychiatrist"

})
db.patients.belongsTo(db.hospitals, {
    foreignKey: "hospitalId",

})
module.exports = db;