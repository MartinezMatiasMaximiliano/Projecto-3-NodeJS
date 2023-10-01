CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `catalogoview` AS
    SELECT 
        `catalogo`.`idCatalogo` AS `id`,
        `posters`.`dirPoster` AS `poster`,
        `catalogo`.`titulo` AS `titulo`,
        `categorias`.`categoria` AS `categoria`,
        GROUP_CONCAT(DISTINCT `generos`.`genero`
            SEPARATOR ',') AS `genero`,
        `catalogo`.`resumen` AS `resumen`,
        `catalogo`.`temporadas` AS `temporadas`,
        GROUP_CONCAT(DISTINCT `actores`.`nombre`
            SEPARATOR ',') AS `reparto`,
        `catalogo`.`trailer` AS `trailer`
    FROM
        ((((((`catalogo`
        JOIN `posters` ON ((`catalogo`.`idPoster` = `posters`.`idPoster`)))
        JOIN `categorias` ON ((`catalogo`.`idCategoria` = `categorias`.`idCategoria`)))
        JOIN `catalogo_generos` ON ((`catalogo`.`idCatalogo` = `catalogo_generos`.`idCatalogo`)))
        JOIN `generos` ON ((`catalogo_generos`.`idGenero` = `generos`.`idGenero`)))
        JOIN `catalogo_repartos` ON ((`catalogo`.`idCatalogo` = `catalogo_repartos`.`idCatalogo`)))
        JOIN `actores` ON ((`catalogo_repartos`.`idPersona` = `actores`.`idPersona`)))
    GROUP BY `catalogo`.`idCatalogo`