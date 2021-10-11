

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

drop database pearson;

CREATE SCHEMA IF NOT EXISTS `pearson` DEFAULT CHARACTER SET utf8 ;
USE `pearson` ;

CREATE TABLE IF NOT EXISTS `pearson`.`Rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `descripcion` VARCHAR(200) NULL,
  `reg_tatus` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`avatar` (
  `id_avatar` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  `descripcion` VARCHAR(45) NULL,
  `path` VARCHAR(300) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_avatar`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `apellido_paterno` VARCHAR(200) NULL,
  `apellido_materno` VARCHAR(200) NULL,
  `nombre_usuario` VARCHAR(200) NULL,
  `correo` VARCHAR(200) NULL,
  `contraseña` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_rol` INT NOT NULL,
  `id_avatar` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_Usuario_Rol_idx` (`id_rol` ASC) VISIBLE,
  INDEX `fk_Usuario_avatar1_idx` (`id_avatar` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Rol`
    FOREIGN KEY (`id_rol`)
    REFERENCES `pearson`.`Rol` (`id_rol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_avatar1`
    FOREIGN KEY (`id_avatar`)
    REFERENCES `pearson`.`avatar` (`id_avatar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Grado` (
  `id_grado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_grado`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`pais` (
  `id_pais` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `nombre` VARCHAR(200) NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Grupo` (
  `id_grupo` INT NOT NULL AUTO_INCREMENT,
  `grupo` INT NULL,
  `nombre` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_grupo`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Ciclo_Escolar` (
  `id_ciclo_escolar` INT NOT NULL,
  `año` YEAR(4) NULL,
  `ciclo` INT NULL,
  `inicio` DATE NULL,
  `fin` DATE NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_ciclo_escolar`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`ciudad` (
  `id_ciudad` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_pais` INT NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  INDEX `fk_ciudad_pais1_idx` (`id_pais` ASC) VISIBLE,
  CONSTRAINT `fk_ciudad_pais1`
    FOREIGN KEY (`id_pais`)
    REFERENCES `pearson`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Inscripcion` (
  `id_inscripcion` INT NOT NULL AUTO_INCREMENT,
  `created_by` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_grupo` INT NOT NULL,
  `id_grado` INT NOT NULL,
  `id_ciclo_escolar` INT NOT NULL,
  `id_ciudad` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_inscripcion`),
  INDEX `fk_Inscripcion_Grupo1_idx` (`id_grupo` ASC) VISIBLE,
  INDEX `fk_Inscripcion_Grado1_idx` (`id_grado` ASC) VISIBLE,
  INDEX `fk_Inscripcion_Ciclo_Escolar1_idx` (`id_ciclo_escolar` ASC) VISIBLE,
  INDEX `fk_Inscripcion_ciudad1_idx` (`id_ciudad` ASC) VISIBLE,
  INDEX `fk_Inscripcion_Usuario1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Inscripcion_Grupo1`
    FOREIGN KEY (`id_grupo`)
    REFERENCES `pearson`.`Grupo` (`id_grupo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Grado1`
    FOREIGN KEY (`id_grado`)
    REFERENCES `pearson`.`Grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Ciclo_Escolar1`
    FOREIGN KEY (`id_ciclo_escolar`)
    REFERENCES `pearson`.`Ciclo_Escolar` (`id_ciclo_escolar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_ciudad1`
    FOREIGN KEY (`id_ciudad`)
    REFERENCES `pearson`.`ciudad` (`id_ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `pearson`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Sentimiento` (
  `id_sentimiento` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_sentimiento`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`lectura` (
  `id_lectura` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  `descripcion` VARCHAR(400) NULL,
  `texto` LONGTEXT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_lectura`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Lectura_Grado` (
  `id_lectura_grado` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_grado` INT NOT NULL,
  `id_lectura` INT NOT NULL,
  PRIMARY KEY (`id_lectura_grado`),
  INDEX `fk_Lectura_Grado_Grado1_idx` (`id_grado` ASC) VISIBLE,
  INDEX `fk_Lectura_Grado_lectura1_idx` (`id_lectura` ASC) VISIBLE,
  CONSTRAINT `fk_Lectura_Grado_Grado1`
    FOREIGN KEY (`id_grado`)
    REFERENCES `pearson`.`Grado` (`id_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lectura_Grado_lectura1`
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearson`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`pregunta_tipo` (
  `id_pregunta_tipo` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  `descripcion` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_pregunta_tipo`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`insignia` (
  `id_insignia` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_insignia`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`pregunta` (
  `id_pregunta` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `tipo` VARCHAR(45) NULL,
  `id_pregunta_tipo` INT NOT NULL,
  `id_insignia` INT NOT NULL,
  PRIMARY KEY (`id_pregunta`),
  INDEX `fk_pregunta_pregunta_tipo1_idx` (`id_pregunta_tipo` ASC) VISIBLE,
  INDEX `fk_pregunta_insignia1_idx` (`id_insignia` ASC) VISIBLE,
  CONSTRAINT `fk_pregunta_pregunta_tipo1`
    FOREIGN KEY (`id_pregunta_tipo`)
    REFERENCES `pearson`.`pregunta_tipo` (`id_pregunta_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregunta_insignia1`
    FOREIGN KEY (`id_insignia`)
    REFERENCES `pearson`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`respuesta` (
  `id_respuesta` INT NOT NULL,
  `respuesta` VARCHAR(500) NULL,
  `correcta` TINYINT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  PRIMARY KEY (`id_respuesta`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`pregunta_respuesta` (
  `id_pregunta_respuesta` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_pregunta` INT NOT NULL,
  `id_respuesta` INT NOT NULL,
  PRIMARY KEY (`id_pregunta_respuesta`),
  INDEX `fk_pregunta_respuesta_pregunta1_idx` (`id_pregunta` ASC) VISIBLE,
  INDEX `fk_pregunta_respuesta_respuesta1_idx` (`id_respuesta` ASC) VISIBLE,
  CONSTRAINT `fk_pregunta_respuesta_pregunta1`
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearson`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregunta_respuesta_respuesta1`
    FOREIGN KEY (`id_respuesta`)
    REFERENCES `pearson`.`respuesta` (`id_respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Respuesta_Actividad` (
  `id_respuesta_actividad` INT NOT NULL,
  `puntos` INT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_pregunta_respuesta` INT NOT NULL,
  PRIMARY KEY (`id_respuesta_actividad`),
  INDEX `fk_Respuestas_Actividad_pregunta_respuesta1_idx` (`id_pregunta_respuesta` ASC) VISIBLE,
  CONSTRAINT `fk_Respuestas_Actividad_pregunta_respuesta1`
    FOREIGN KEY (`id_pregunta_respuesta`)
    REFERENCES `pearson`.`pregunta_respuesta` (`id_pregunta_respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`actividad` (
  `id_actividad` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_lectura_grado` INT NOT NULL,
  `id_respuesta_actividad` INT NOT NULL,
  `id_inscripcion` INT NOT NULL,
  PRIMARY KEY (`id_actividad`),
  INDEX `fk_actividad_Lectura_Grado1_idx` (`id_lectura_grado` ASC) VISIBLE,
  INDEX `fk_actividad_Respuestas_Actividad1_idx` (`id_respuesta_actividad` ASC) VISIBLE,
  INDEX `fk_actividad_Inscripcion1_idx` (`id_inscripcion` ASC) VISIBLE,
  CONSTRAINT `fk_actividad_Lectura_Grado1`
    FOREIGN KEY (`id_lectura_grado`)
    REFERENCES `pearson`.`Lectura_Grado` (`id_lectura_grado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actividad_Respuestas_Actividad1`
    FOREIGN KEY (`id_respuesta_actividad`)
    REFERENCES `pearson`.`Respuesta_Actividad` (`id_respuesta_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actividad_Inscripcion1`
    FOREIGN KEY (`id_inscripcion`)
    REFERENCES `pearson`.`Inscripcion` (`id_inscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Lectura_Pregunta` (
  `idtable1` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_lectura` INT NOT NULL,
  `id_pregunta` INT NOT NULL,
  PRIMARY KEY (`idtable1`),
  INDEX `fk_Lectura_Pregunta_lectura1_idx` (`id_lectura` ASC) VISIBLE,
  INDEX `fk_Lectura_Pregunta_pregunta1_idx` (`id_pregunta` ASC) VISIBLE,
  CONSTRAINT `fk_Lectura_Pregunta_lectura1`
    FOREIGN KEY (`id_lectura`)
    REFERENCES `pearson`.`lectura` (`id_lectura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lectura_Pregunta_pregunta1`
    FOREIGN KEY (`id_pregunta`)
    REFERENCES `pearson`.`pregunta` (`id_pregunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Sentimiento_Actividad` (
  `id_sentimientos` INT NOT NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `tipo` VARCHAR(45) NULL,
  `id_actividad` INT NOT NULL,
  `id_sentimiento` INT NOT NULL,
  PRIMARY KEY (`id_sentimientos`),
  INDEX `fk_Sentimiento_Actividad_actividad1_idx` (`id_actividad` ASC) VISIBLE,
  INDEX `fk_Sentimiento_Actividad_Sentimiento1_idx` (`id_sentimiento` ASC) VISIBLE,
  CONSTRAINT `fk_Sentimiento_Actividad_actividad1`
    FOREIGN KEY (`id_actividad`)
    REFERENCES `pearson`.`actividad` (`id_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sentimiento_Actividad_Sentimiento1`
    FOREIGN KEY (`id_sentimiento`)
    REFERENCES `pearson`.`Sentimiento` (`id_sentimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pearson`.`Insignia_Actividad` (
  `id_sentimiento` INT NOT NULL,
  `cantidad` VARCHAR(45) NULL,
  `reg_status` VARCHAR(45) NULL,
  `created_by` VARCHAR(200) NULL,
  `created_date` DATETIME NULL,
  `last_update_by` VARCHAR(200) NULL,
  `last_update_date` DATETIME NULL,
  `id_actividad` INT NOT NULL,
  `id_insignia` INT NOT NULL,
  PRIMARY KEY (`id_sentimiento`),
  INDEX `fk_Insignia_Actividad_actividad1_idx` (`id_actividad` ASC) VISIBLE,
  INDEX `fk_Insignia_Actividad_insignia1_idx` (`id_insignia` ASC) VISIBLE,
  CONSTRAINT `fk_Insignia_Actividad_actividad1`
    FOREIGN KEY (`id_actividad`)
    REFERENCES `pearson`.`actividad` (`id_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Insignia_Actividad_insignia1`
    FOREIGN KEY (`id_insignia`)
    REFERENCES `pearson`.`insignia` (`id_insignia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
