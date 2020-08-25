-- MySQL Workbench Forward Engineering
USE lab_mysql;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Car` (
  `idcar` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  `Fuel` VARCHAR(45) NULL,
  `Hybrid` TINYINT NULL,
  PRIMARY KEY (`idcar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `idCustomer` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` INT NOT NULL,
  `Birth day` DATE NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `idSalesperson` INT NOT NULL AUTO_INCREMENT,
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  `Arrival Date` DATE NULL,
  `Employee Rank` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice` (
  `idInvoice` INT NOT NULL AUTO_INCREMENT,
  `Invoice Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Car Sold` INT NOT NULL,
  `Buyer` INT NOT NULL,
  PRIMARY KEY (`idInvoice`, `Car Sold`, `Buyer`),
  INDEX `fk_Invoice_Car1_idx` (`Car Sold` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Buyer` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Car1`
    FOREIGN KEY (`Car Sold`)
    REFERENCES `mydb`.`Car` (`idcar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Buyer`)
    REFERENCES `mydb`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer_has_Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer_has_Car` (
  `Car Buyer` INT NOT NULL,
  `Purchased Car` INT NOT NULL,
  `Car Seller` INT NOT NULL,
  PRIMARY KEY (`Car Buyer`, `Purchased Car`, `Car Seller`),
  INDEX `fk_Customer_has_Car_Car1_idx` (`Purchased Car` ASC) VISIBLE,
  INDEX `fk_Customer_has_Car_Customer_idx` (`Car Buyer` ASC) VISIBLE,
  INDEX `fk_Customer_has_Car_Salesperson1_idx` (`Car Seller` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_has_Car_Customer`
    FOREIGN KEY (`Car Buyer`)
    REFERENCES `mydb`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Car_Car1`
    FOREIGN KEY (`Purchased Car`)
    REFERENCES `mydb`.`Car` (`idcar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Car_Salesperson1`
    FOREIGN KEY (`Car Seller`)
    REFERENCES `mydb`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
