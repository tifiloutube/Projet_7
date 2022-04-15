const { Sequelize } = require("sequelize");

const sequelize = new Sequelize("groupomania", "root", "90630@Klm31085", {
    host: "localhost",
    dialect: "mysql"
});

try {
    sequelize.authenticate();
    console.log('Connection to groupomania  is a succes !');
} catch (error) {
    console.error("Unable to connect to the groupomania", error);
}
