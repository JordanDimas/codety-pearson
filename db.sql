
-- -----------------------------------------------------
-- Schema pearson
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pearson` ;

-- -----------------------------------------------------
-- Schema pearson
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pearson` DEFAULT CHARACTER SET utf8 ;
USE `pearson` ;

USE pearson;

-- -----------------------------------------------------
-- Table `pearson`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `descripcion` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`avatar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`avatar` (
  `id_avatar` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `path` VARCHAR(300) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_avatar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `apellido_paterno` VARCHAR(200) NULL DEFAULT NULL,
  `apellido_materno` VARCHAR(200) NULL DEFAULT NULL,
  `nombre_usuario` VARCHAR(200) NULL DEFAULT NULL,
  `correo` VARCHAR(200) NULL DEFAULT NULL,
  `contraseña` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_rol` INT NOT NULL,
  `id_avatar` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
    FOREIGN KEY (`id_rol`)
    REFERENCES `pearson`.`rol` (`id_rol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_avatar`)
    REFERENCES `pearson`.`avatar` (`id_avatar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`grado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`grado` (
  `id_grado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_grado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`pais` (
  `id_pais` INT NOT NULL AUTO_INCREMENT,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`grupo` (
  `id_grupo` INT NOT NULL AUTO_INCREMENT,
  `grupo` VARCHAR(200) NULL DEFAULT NULL,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_grupo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`ciclo_escolar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`ciclo_escolar` (
  `id_ciclo_escolar` INT NOT NULL AUTO_INCREMENT,
  `año` YEAR(4) NULL DEFAULT NULL,
  `ciclo` INT NULL DEFAULT NULL,
  `inicio` DATE NULL DEFAULT NULL,
  `fin` DATE NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ciclo_escolar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`ciudad` (
  `id_ciudad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pais` INT NOT NULL,
  PRIMARY KEY (`id_ciudad`),
    FOREIGN KEY (`id_pais`)
    REFERENCES `pearson`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`escuela` (
  `id_escuela` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ciudad` INT NOT NULL,
  PRIMARY KEY (`id_escuela`),
    FOREIGN KEY (`id_ciudad`)
    REFERENCES `pearson`.`ciudad` (`id_ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`distribucion_escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`distribucion_escuela` (
  `id_distribucion_escuela` INT NOT NULL AUTO_INCREMENT,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_grupo` INT NOT NULL,
  `id_escuela` INT NOT NULL,
  `id_grado` INT NOT NULL,
  PRIMARY KEY (`id_distribucion_escuela`),
    FOREIGN KEY (`id_grupo`)
    REFERENCES `pearson`.`grupo` (`id_grupo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_escuela`)
    REFERENCES `pearson`.`escuela` (`id_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_grado`)
    REFERENCES `pearson`.`grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`inscripcion` (
  `id_inscripcion` INT NOT NULL AUTO_INCREMENT,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ciclo_escolar` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `id_distribucion_escuela` INT NOT NULL,
  PRIMARY KEY (`id_inscripcion`),
    FOREIGN KEY (`id_ciclo_escolar`)
    REFERENCES `pearson`.`ciclo_escolar` (`id_ciclo_escolar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_usuario`)
    REFERENCES `pearson`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_distribucion_escuela`)
    REFERENCES `pearson`.`distribucion_escuela` (`id_distribucion_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`sentimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`sentimiento` (
  `id_sentimiento` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(300) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sentimiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`lectura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`lectura` (
  `id_lectura` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `descripcion` VARCHAR(400) NULL DEFAULT NULL,
  `texto` LONGTEXT NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_lectura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`lectura_grado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`lectura_grado` (
  `id_lectura_grado` INT NOT NULL AUTO_INCREMENT,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_grado` INT NOT NULL,
  `id_lectura` INT NOT NULL,
  PRIMARY KEY (`id_lectura_grado`),
    FOREIGN KEY (`id_grado`)
    REFERENCES `pearson`.`grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearson`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`pregunta_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`pregunta_tipo` (
  `id_pregunta_tipo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `descripcion` VARCHAR(200) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pregunta_tipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`insignia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`insignia` (
  `id_insignia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(400) NULL DEFAULT NULL,
  `alias` VARCHAR(45) NULL,
  `descripcion` VARCHAR(400) NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_insignia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`habilidad` (
  `id_habilidad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(400) NULL DEFAULT NULL,
  `alias` VARCHAR(45) NULL,
  `descripcion` VARCHAR(400) NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_insignia` INT NOT NULL,
  PRIMARY KEY (`id_habilidad`),
    FOREIGN KEY (`id_insignia`)
    REFERENCES `pearson`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`pregunta` (
  `id_pregunta` INT NOT NULL AUTO_INCREMENT,
  `pregunta` VARCHAR(2000) NULL,
  `puntos` INT NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pregunta_tipo` INT NOT NULL,
  `id_habilidad` INT NOT NULL,
  `id_subhabilidad` INT NOT NULL,
  `id_insignia` INT NOT NULL,
  PRIMARY KEY (`id_pregunta`),
    FOREIGN KEY (`id_pregunta_tipo`)
    REFERENCES `pearson`.`pregunta_tipo` (`id_pregunta_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_habilidad`)
    REFERENCES `pearson`.`habilidad` (`id_habilidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_subhabilidad`)
    REFERENCES `pearson`.`habilidad` (`id_habilidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_insignia`)
    REFERENCES `pearson`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`respuesta` (
  `id_respuesta` INT NOT NULL AUTO_INCREMENT,
  `respuesta` VARCHAR(500) NULL DEFAULT NULL,
  `feedback` VARCHAR(400) NULL,
  `correcta` TINYINT NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pregunta` INT NOT NULL,
  PRIMARY KEY (`id_respuesta`),
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearson`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`actividad` (
  `id_actividad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `fecha_Inicio` DATE NULL DEFAULT NULL,
  `fecha_fin` DATE NULL DEFAULT NULL,
  `bateria` INT NULL DEFAULT NULL,
  `status_actividad` VARCHAR(45) NULL DEFAULT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_lectura` INT NOT NULL,
  `id_distribucion_escuela` INT NOT NULL,
  PRIMARY KEY (`id_actividad`),
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearson`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_distribucion_escuela`)
    REFERENCES `pearson`.`distribucion_escuela` (`id_distribucion_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`actividad_inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`actividad_inscripcion` (
  `id_actividad_inscripcion` INT NOT NULL AUTO_INCREMENT,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_inscripcion` INT NOT NULL,
  `id_actividad` INT NOT NULL,
  PRIMARY KEY (`id_actividad_inscripcion`),
    FOREIGN KEY (`id_inscripcion`)
    REFERENCES `pearson`.`inscripcion` (`id_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_actividad`)
    REFERENCES `pearson`.`actividad` (`id_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`respuesta_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`respuesta_actividad` (
  `id_respuesta_actividad` INT NOT NULL AUTO_INCREMENT,
  `respuesta_usuario` VARCHAR(500) NULL DEFAULT NULL,
  `puntos` INT NULL DEFAULT NULL,
  `intento` INT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pregunta_respuesta` INT NOT NULL,
  `id_actividad_inscripcion` INT NOT NULL,
  `id_respuesta` INT NOT NULL,
  `id_pregunta` INT NOT NULL,
  PRIMARY KEY (`id_respuesta_actividad`),
    FOREIGN KEY (`id_actividad_inscripcion`)
    REFERENCES `pearson`.`actividad_inscripcion` (`id_actividad_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_respuesta`)
    REFERENCES `pearson`.`respuesta` (`id_respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearson`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`lectura_pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`lectura_pregunta` (
  `id_lectura_pregunta` INT NOT NULL AUTO_INCREMENT,
  `bateria` INT NULL,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_lectura` INT NOT NULL,
  `id_pregunta` INT NOT NULL,
  PRIMARY KEY (`id_lectura_pregunta`),
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearson`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearson`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearson`.`sentimiento_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearson`.`sentimiento_actividad` (
  `id_sentimiento_actividad` INT NOT NULL AUTO_INCREMENT,
  `reg_status` VARCHAR(45) NULL DEFAULT NULL,
  `created_by` VARCHAR(200) NULL DEFAULT NULL,
  `created_date` DATETIME NULL DEFAULT NULL,
  `last_update_by` VARCHAR(200) NULL DEFAULT NULL,
  `last_update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_sentimiento_inicio` INT NOT NULL,
  `id_sentimiento_fin` INT NOT NULL,
  `id_actividad_inscripcion` INT NOT NULL,
  PRIMARY KEY (`id_sentimiento_actividad`),
    FOREIGN KEY (`id_sentimiento_inicio`)
    REFERENCES `pearson`.`sentimiento` (`id_sentimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_sentimiento_fin`)
    REFERENCES `pearson`.`sentimiento` (`id_sentimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_actividad_inscripcion`)
    REFERENCES `pearson`.`actividad_inscripcion` (`id_actividad_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

