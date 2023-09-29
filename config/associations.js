const Actores = require('../models/Actores');
const Catalogo = require('../models/Catalogo');
const Catalogo_reparto = require('../models/Catalogo_reparto');
const Categorias = require('../models/Categorias');
const Generos = require('../models/Generos');
const Posters = require('../models/Posters')

//const = require('../models/');
//const = require('../models/');

//categorias 1:N catalogo
Categorias.hasMany(Catalogo,{foreignKey:'idCategoria'})
Catalogo.belongsTo(Categorias,{ foreignKey: 'idCategoria' })

//Catalogo 1:1 Posts
Catalogo.belongsTo(Posters,{foreignKey:'idPoster'})

//Actores N:N Catalogo mediante catalogo_repartos
Catalogo.belongsToMany(Actores,{through:Catalogo_reparto,foreignKey:'idCatalogo'})
Actores.belongsToMany(Catalogo,{through:Catalogo_reparto,foreignKey:'idPersona'})

//Catalogo N:N Generos mediante catalogo_generos

module.exports = {Actores,Catalogo,Catalogo_reparto,Categorias,Generos,Posters}