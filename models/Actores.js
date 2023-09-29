const Sequelize = require('sequelize');
const {sequelize} = require('../config/db')

const Actores = sequelize.define(
  "actores",
  {
    idPersona: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
      unique: true,
    },
    nombre: {
      type: Sequelize.STRING(500),
      allowNull: false,
      unique: true,
    },
  },
  { tableName: "actores", timestamps: false }
);

module.exports = Actores;