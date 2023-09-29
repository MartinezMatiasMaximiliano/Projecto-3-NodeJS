const Sequelize = require('sequelize');
const {sequelize} = require('../config/db')

const Catalogo_reparto = sequelize.define("catalogo_repartos",{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
        unique: true,
      },
},{tableName:'catalogo_repartos',timestamps:false})

module.exports = Catalogo_reparto