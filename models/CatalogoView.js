const Sequelize = require('sequelize');
const {sequelize} = require('../config/db')

const catalogoView = sequelize.define('catalogoview',{
    id:{type: Sequelize.DataTypes.INTEGER,primaryKey:true},
    poster:{type: Sequelize.DataTypes.TEXT(60000)},
    titulo:{type: Sequelize.DataTypes.TEXT(60000)},
    categoria:{type: Sequelize.DataTypes.TEXT(60000)},
    genero:{type: Sequelize.DataTypes.TEXT(60000)},
    resumen:{type: Sequelize.DataTypes.TEXT(60000)},
    temporadas:{type: Sequelize.DataTypes.INTEGER},
    genero:{type: Sequelize.DataTypes.TEXT(60000)},
    reparto:{type: Sequelize.DataTypes.TEXT(60000)},
    trailer:{type: Sequelize.DataTypes.TEXT(60000)},
},{tableName:'catalogoview',timestamps:false})

module.exports = catalogoView