const Sequelize = require('sequelize');
const {sequelize} = require('../config/db');

const Posters = sequelize.define(
  "posters",
  {
    idPoster: {
      type: Sequelize.DataTypes.INTEGER,
      primaryKey:true,
      allowNull: false,
      autoIncrement: true,
    },
    dirPoster: {
      type: Sequelize.DataTypes.INTEGER,
      allowNull: false,
      unique: true,
    },
  },
  { tableName: "posters", timestamps: false }
);

module.exports = Posters;