const Sequelize = require('sequelize');
const {sequelize} = require('../config/db')

const Categoria = sequelize.define(
  "categorias",
  {
    idCategoria: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
        unique: true,
    },
    categoria: {
      type: Sequelize.STRING(255),
      allowNull: false,
      unique: true,
    },
  },
  { tableName: "categorias", timestamps: false }
);


module.exports = Categoria