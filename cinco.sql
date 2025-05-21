USE `disfraces`;
DROP function IF EXISTS `calcular_descuento`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION `calcular_descuento` (valor INT)
RETURNS DECIMAL (10,2)
BEGIN
RETURN valor * 0.10;
END$$

DELIMITER ;


USE `disfraces`;
DROP function IF EXISTS `dias_prestamo`;

DELIMITER $$
USE `disfraces`$$
CREATE FUNCTION `dias_prestamo` (fecha_pres DATE, fecha_dev DATE)
RETURNS INT
BEGIN
RETURN  DATEDIFF(fecha_dev, fecha_pres);
END$$

DELIMITER ;