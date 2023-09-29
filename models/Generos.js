const Sequelize = require('sequelize');
const {sequelize} = require('../config/db');

const Genero = sequelize.define(
  "genero",
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    genero: {
        type: Sequelize.STRING(60),
        allowNull:false,
    },
  },
  { tableName: "generos", timestamps: false }
);

module.exports = Genero