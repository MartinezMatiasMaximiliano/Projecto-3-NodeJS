const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000
const dirName = __dirname
const {sequelize} = require('./config/db');
const bodyParser = require('body-parser');
const {Actores,Catalogo,Catalogo_reparto,Categorias,Generos,Posters} = require('./config/associations');
const catalogoView = require('./models/CatalogoView');
const { Op } = require("sequelize");

app.use(express.json());
app.use(bodyParser.json())
app.use((req, res, next) => {
    res.header("Content-Type", "application/json; charset=utf-8");
    next();
})

app.use(async(req,res,next)=>{
    try {
        await sequelize.authenticate();
        next();
    } catch (error) {
        res
        .status(500)
        .json({ error: "Error en el servidor", description: error.message });
    }
})


//---------------------[GET]------------------------
app.get('/categorias',async(req,res)=>{ //listo
    try {
        const categorias = await Categorias.findAll()
        categorias.length !== 0 ? res.status(200).json(categorias)
      : res.status(404).json({ error: "No se encontraron categorias para listar." });

    } catch (error) {
      console.error("Error al obtener las categorias:", error);
      res.status(500).json({ error: "Error al obtener las categorias" });
    }
})

app.get('/actores',async(req,res)=>{  //listo
  try {
      const categorias = await Actores.findAll({order:[['idPersona','ASC']]})
      categorias.length !== 0 ? res.status(200).json(categorias)
    : res.status(404).json({ error: "No se encontraron actores para listar."});

  } catch (error) {
    console.error("Error al obtener las categorias:", error);
    res.status(500).json({ error: "Error al obtener los actores" });
  }
})

app.get('/actores/:nombre',async(req,res)=>{ //listo
  const nombreBuscado = req.params.nombre
  try {
      const categorias = await Actores.findAll(
        {where:{nombre:{[Op.like]: `%${nombreBuscado}%`}}}
        )
      categorias.length !== 0 ? res.status(200).json(categorias)
    : res.status(404).json({ error: `No se encontraron actores que contengan ${nombreBuscado} en su nombre.`});

  } catch (error) {
    console.error("Error al obtener las categorias:", error);
    res.status(500).json({ error: "Error al obtener los actores" });
  }
})

app.get('/catalogo',async(req,res)=>{ //listo
  try {
    const catalogo = await catalogoView.findAll()
    if (!catalogo) {
      return res.status(404).json({ error: "La consulta fue exitosa, pero no se pudo encontrar el catalogo" });
    }
    res.status(200).json(catalogo);
  } catch (error) {
    console.error("Error al obtener el catalogo:", error);
    res.status(500).json({ error: "Error al obtener el catalogo" });
  }
})

app.get('/catalogo/id/:id',async(req,res)=>{ //listo
  const idBuscado = req.params.id;
  try {
    const catalogo = await catalogoView.findByPk(idBuscado)
    if (!catalogo) {
      return res.status(404).json({ error: `La consulta fue exitosa, pero no se pudo encontrar el catalogo con id ${idBuscado}` });
    }
    res.status(200).json(catalogo);
  } catch (error) {
    console.error("Error al obtener el catalogo: ", error);
    res.status(500).json({ error: `Error al obtener el catalogo con id ${idBuscado}`});
  }  
  })
  

  app.get('/catalogo/titulo/:titulo',async(req,res)=>{ //listo
    const tituloBuscado = req.params.titulo;
  try {
    const catalogo = await catalogoView.findAll({where:{titulo:{[Op.like]:`%${tituloBuscado}%`}}})
    if (catalogo.length == 0) {
      return res.status(404).json({ error: `La consulta fue exitosa, pero no se pudo encontrar titulos que contengan: ${tituloBuscado}`});
    }
    res.status(200).json(catalogo);
  } catch (error) {
    console.error("Error al obtener el catalogo: ", error);
    res.status(500).json({ error: `Error al obtener el catalogo con titulo ${tituloBuscado}`});
  }   
  })

  app.get('/catalogo/generos/:genero',async(req,res)=>{ //listo

    const generoBuscado = req.params.genero;
    try {
      const catalogo = await catalogoView.findAll({where:{genero:{[Op.like]:`%${generoBuscado}%`}}})
      if (catalogo.length == 0) {
        return res.status(404).json({ error: `La consulta fue exitosa, pero no se pudo encontrar titulos que contengan: ${generoBuscado} en su genero`});
      }
      res.status(200).json(catalogo);
    } catch (error) {
      console.error("Error al obtener el catalogo: ", error);
      res.status(500).json({ error: `Error al obtener el catalogo con genero ${generoBuscado}`});
  }})

  app.get('/catalogo/categoria/:categoria',async(req,res)=>{ //listo
    const catBuscada = req.params.categoria;
    try {

      const catalogo = await catalogoView.findAll({where:{categoria:{[Op.like]:`%${catBuscada}%`}}})
      if (!catalogo) {
        return res.status(404).json({ error: `La consulta fue exitosa, pero no se pudo encontrar titulos que sean de categoria: ${catBuscada}` });
      }
      res.status(200).json(catalogo);
    } catch (error) {
      console.error("Error al obtener el catalogo: ", error);
      res.status(500).json({ error: `Error al obtener la categoria ${catBuscada}`});
    }  
  })
//---------------------[POST]-----------------------
app.post('/categoria',async(req,res)=>{ //listo
    try {
        const {categoria} = req.body;
        const nuevaCategoria = await Categoria.create({categoria})
        res.status(201).send('creado con exito: ',categoria) 
    } catch (error) {
        console.error('Error al crear el genero: ',error);
        res.status(500).json({error: 'Error al crear la categoria'});
    }
})
//---------------------[PUT]------------------------

//---------------------[PATCH]----------------------

//---------------------[DELETE]---------------------

//--------------------------------------------------
app.get('*', async (req, res) => { //ruta no encontrada
    res.status(404).send('Ruta no encontrada')
})

app.listen(PORT, () => { console.log(`Escuchando en puerto ${PORT}`); })
