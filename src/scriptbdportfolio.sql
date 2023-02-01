-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema portfolio-argprograma
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema portfolio-argprograma
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portfolio-argprograma` DEFAULT CHARACTER SET utf8 ;
USE `portfolio-argprograma` ;

-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`skills` (
  `idSkills` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idSkills`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`proyectos` (
  `idProyecto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `link` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(255) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idProyecto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`frontSkills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`frontSkills` (
  `idFrontSkill` INT NOT NULL AUTO_INCREMENT,
  `aniosdeuso` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `icono` VARCHAR(255) NOT NULL,
  `proyectos_idProyecto` INT NOT NULL,
  PRIMARY KEY (`idFrontSkill`),
  INDEX `fk_frontSkills_proyectos1_idx` (`proyectos_idProyecto` ASC) VISIBLE,
  CONSTRAINT `fk_frontSkills_proyectos1`
    FOREIGN KEY (`proyectos_idProyecto`)
    REFERENCES `portfolio-argprograma`.`proyectos` (`idProyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`skills_tiene_frontSkills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`skills_tiene_frontSkills` (
  `skills_idSkills` INT NOT NULL,
  `frontSkills_idFrontSkill` INT NOT NULL,
  PRIMARY KEY (`skills_idSkills`, `frontSkills_idFrontSkill`),
  INDEX `fk_skills_has_frontSkills_frontSkills1_idx` (`frontSkills_idFrontSkill` ASC) VISIBLE,
  INDEX `fk_skills_has_frontSkills_skills_idx` (`skills_idSkills` ASC) VISIBLE,
  CONSTRAINT `fk_skills_has_frontSkills_skills`
    FOREIGN KEY (`skills_idSkills`)
    REFERENCES `portfolio-argprograma`.`skills` (`idSkills`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_has_frontSkills_frontSkills1`
    FOREIGN KEY (`frontSkills_idFrontSkill`)
    REFERENCES `portfolio-argprograma`.`frontSkills` (`idFrontSkill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`backSkills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`backSkills` (
  `idBackSkill` INT NOT NULL AUTO_INCREMENT,
  `backSkillscol` VARCHAR(45) NOT NULL,
  `aniosdeuso` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `icono` VARCHAR(255) NOT NULL,
  `proyectos_idProyecto` INT NOT NULL,
  PRIMARY KEY (`idBackSkill`),
  INDEX `fk_backSkills_proyectos1_idx` (`proyectos_idProyecto` ASC) VISIBLE,
  CONSTRAINT `fk_backSkills_proyectos1`
    FOREIGN KEY (`proyectos_idProyecto`)
    REFERENCES `portfolio-argprograma`.`proyectos` (`idProyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio-argprograma`.`skills_tiene_backSkills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio-argprograma`.`skills_tiene_backSkills` (
  `skills_idSkills` INT NOT NULL,
  `backSkills_idBackSkill` INT NOT NULL,
  PRIMARY KEY (`skills_idSkills`, `backSkills_idBackSkill`),
  INDEX `fk_skills_has_backSkills_backSkills1_idx` (`backSkills_idBackSkill` ASC) VISIBLE,
  INDEX `fk_skills_has_backSkills_skills1_idx` (`skills_idSkills` ASC) VISIBLE,
  CONSTRAINT `fk_skills_has_backSkills_skills1`
    FOREIGN KEY (`skills_idSkills`)
    REFERENCES `portfolio-argprograma`.`skills` (`idSkills`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_has_backSkills_backSkills1`
    FOREIGN KEY (`backSkills_idBackSkill`)
    REFERENCES `portfolio-argprograma`.`backSkills` (`idBackSkill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;