module.exports = (sequelize, DataTypes) => {
    const Psychiatrist = sequelize.define("psychiatrists", {
        first_name: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                len: {
                    args: [1, 20],
                    msg: "First name is Required and must be less than 20 chars"
                }
            }
        },
        last_name: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                len: {
                    args: [1, 20],
                    msg: "Last name is Required and must be less than 20 chars"
                }
            },

        },
        hospital_name: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                notEmpty: {
                    msg: "Hospital name is Required"
                }
            },
        },

        phone_number: {
            type: DataTypes.STRING
        },

        pincode: {
            type: DataTypes.STRING
        },

        state: {
            type: DataTypes.STRING,

        },



    }, { timestamps: false, createdAt: false, updatedAt: false, });
    return Psychiatrist;
};