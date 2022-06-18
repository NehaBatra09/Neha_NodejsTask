module.exports = (sequelize, DataTypes) => {
    const Patients = sequelize.define("patients", {

        name: {
            type: DataTypes.STRING,
            validate: { len: { args: [3], msg: "Name should be greater than 3 chars" }, notNull: { args: true, msg: "Name is Required" } },
            allowNull: false,
            notEmpty: true
        },
        address: {
            type: DataTypes.STRING,
            validate: { len: { args: [10], msg: "Address should be greater than 10 chars" }, notNull: { args: true, msg: "Address is Required" } },
            allowNull: false,
            notEmpty: true
        },
        email: {
            type: DataTypes.STRING,
            validate: {
                isEmail: {
                    args: true,
                    msg: "Email address must be valid"
                }
                , notNull: { args: true, msg: "Email is Required....." }
            },
            allowNull: false,
            notEmpty: true
        },

        phone_number: {
            type: DataTypes.STRING,
            validate: {
                is: { args: /^\+\d{12}$/, msg: "phone number is not valid" },
            }

        },
        password: {
            type: DataTypes.STRING,
            validate: {
                len: { args: [8, 15], msg: "Password Max length 15 and Min length 8" },
                notNull: { args: true, msg: "Password is Required" },
                is: { args: /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])/, msg: "Password should containg 1 upper,1 lower and 1 digit" }
            },

            allowNull: false,
            notEmpty: true

        },
        photo: {
            type: DataTypes.STRING,
            validate: {
                notNull: { args: true, msg: "Photo is Required" }
            },
            allowNull: false,
            notEmpty: true
        },

    }, { timestamps: false, createdAt: false, updatedAt: false, });
    return Patients;
};