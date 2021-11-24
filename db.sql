
-- -----------------------------------------------------
-- Schema pearsonqa
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pearsonqa` ;

-- -----------------------------------------------------
-- Schema pearsonqa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pearsonqa` DEFAULT CHARACTER SET utf8 ;
USE `pearsonqa` ;

USE pearsonqa;

-- -----------------------------------------------------
-- Table `pearsonqa`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`rol` (
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
-- Table `pearsonqa`.`avatar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`avatar` (
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
-- Table `pearsonqa`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`usuario` (
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
    REFERENCES `pearsonqa`.`rol` (`id_rol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_avatar`)
    REFERENCES `pearsonqa`.`avatar` (`id_avatar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`grado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`grado` (
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
-- Table `pearsonqa`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`pais` (
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
-- Table `pearsonqa`.`grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`grupo` (
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
-- Table `pearsonqa`.`ciclo_escolar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`ciclo_escolar` (
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
-- Table `pearsonqa`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`ciudad` (
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
    REFERENCES `pearsonqa`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`escuela` (
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
    REFERENCES `pearsonqa`.`ciudad` (`id_ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`distribucion_escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`distribucion_escuela` (
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
    REFERENCES `pearsonqa`.`grupo` (`id_grupo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_escuela`)
    REFERENCES `pearsonqa`.`escuela` (`id_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_grado`)
    REFERENCES `pearsonqa`.`grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`inscripcion` (
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
    REFERENCES `pearsonqa`.`ciclo_escolar` (`id_ciclo_escolar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_usuario`)
    REFERENCES `pearsonqa`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_distribucion_escuela`)
    REFERENCES `pearsonqa`.`distribucion_escuela` (`id_distribucion_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`sentimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`sentimiento` (
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
-- Table `pearsonqa`.`lectura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`lectura` (
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
-- Table `pearsonqa`.`lectura_grado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`lectura_grado` (
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
    REFERENCES `pearsonqa`.`grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearsonqa`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`pregunta_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`pregunta_tipo` (
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
-- Table `pearsonqa`.`insignia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`insignia` (
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
-- Table `pearsonqa`.`habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`habilidad` (
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
    REFERENCES `pearsonqa`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`pregunta` (
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
    REFERENCES `pearsonqa`.`pregunta_tipo` (`id_pregunta_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_habilidad`)
    REFERENCES `pearsonqa`.`habilidad` (`id_habilidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_subhabilidad`)
    REFERENCES `pearsonqa`.`habilidad` (`id_habilidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_insignia`)
    REFERENCES `pearsonqa`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`respuesta` (
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
    REFERENCES `pearsonqa`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`actividad` (
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
    REFERENCES `pearsonqa`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_distribucion_escuela`)
    REFERENCES `pearsonqa`.`distribucion_escuela` (`id_distribucion_escuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`actividad_inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`actividad_inscripcion` (
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
    REFERENCES `pearsonqa`.`inscripcion` (`id_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_actividad`)
    REFERENCES `pearsonqa`.`actividad` (`id_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`respuesta_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`respuesta_actividad` (
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
    REFERENCES `pearsonqa`.`actividad_inscripcion` (`id_actividad_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_respuesta`)
    REFERENCES `pearsonqa`.`respuesta` (`id_respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearsonqa`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`lectura_pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`lectura_pregunta` (
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
    REFERENCES `pearsonqa`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearsonqa`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pearsonqa`.`sentimiento_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pearsonqa`.`sentimiento_actividad` (
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
    REFERENCES `pearsonqa`.`sentimiento` (`id_sentimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_sentimiento_fin`)
    REFERENCES `pearsonqa`.`sentimiento` (`id_sentimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_actividad_inscripcion`)
    REFERENCES `pearsonqa`.`actividad_inscripcion` (`id_actividad_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

