const db = require("../models/model");
module.exports = (sequelize, DataTypes) => {
    const Hospitals = sequelize.define("hospitals", {

        name: {
            type: DataTypes.STRING
        },

    },
        { timestamps: false, createdAt: false, updatedAt: false, }
    );

    return Hospitals;
};