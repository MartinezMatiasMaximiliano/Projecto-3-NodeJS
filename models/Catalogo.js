const Sequelize = require('sequelize');
const {sequelize} = require('../config/db')

const Catalogo = sequelize.define(
  "catalogo",
  {
    idCatalogo: {
      type: Sequelize.DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
      unique: true,
    },
    titulo:{
        type: Sequelize.DataTypes.STRING(255),
        allowNull: false,
        unique: true,
    },
    resumen:{
        type: Sequelize.DataTypes.STRING(600),
        allowNull: false,
    },
    temporadas:{
        type: Sequelize.DataTypes.INTEGER,
    },
    trailer:{
        type: Sequelize.DataTypes.STRING(255),
    }
  },
  { tableName: "catalogo", timestamps: false }
);


module.exports = Catalogo;