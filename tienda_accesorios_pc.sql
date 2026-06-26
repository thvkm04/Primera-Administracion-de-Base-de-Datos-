-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 12:45:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_accesorios_pc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Mouse', 'Dispositivos de entrada para computadora'),
(2, 'Teclados', 'Teclados mecánicos y convencionales'),
(3, 'Audifonos', 'Audifonos gamer y de oficina'),
(4, 'Monitores', 'Pantallas para computadora'),
(5, 'Webcam', 'Camaras para videollamadas'),
(6, 'Memorias RAM', 'Memorias para mejorar rendimiento'),
(7, 'Discos SSD', 'Almacenamiento rapido'),
(8, 'Discos HDD', 'Almacenamiento tradicional'),
(9, 'Tarjetas Graficas', 'Componentes para video'),
(10, 'Fuentes de Poder', 'Alimentacion del equipo'),
(11, 'Gabinetes', 'Carcasas para PC'),
(12, 'Mousepad', 'Superficies para mouse'),
(13, 'Parlantes', 'Audio externo'),
(14, 'Microfonos', 'Captura de sonido'),
(15, 'Cables HDMI', 'Conexion de video'),
(16, 'Cables USB', 'Conexion de dispositivos'),
(17, 'Adaptadores', 'Conversion de conexiones'),
(18, 'Hubs USB', 'Multiplicadores de puertos'),
(19, 'Ventiladores', 'Refrigeracion del equipo'),
(20, 'Controles Gamer', 'Mandos para videojuegos'),
(21, 'Sillas Gamer', 'Mobiliario gamer'),
(22, 'Luces RGB', 'Iluminacion para PC'),
(23, 'Bocinas Bluetooth', 'Audio inalambrico'),
(24, 'Soportes', 'Bases para dispositivos'),
(25, 'Accesorios Oficina', 'Complementos de computadora'),
(26, 'Mouse', 'Dispositivos de entrada para computadora'),
(27, 'Teclados', 'Teclados mecánicos y convencionales'),
(28, 'Audifonos', 'Audifonos gamer y de oficina'),
(29, 'Monitores', 'Pantallas para computadora'),
(30, 'Webcam', 'Camaras para videollamadas'),
(31, 'Memorias RAM', 'Memorias para mejorar rendimiento'),
(32, 'Discos SSD', 'Almacenamiento rapido'),
(33, 'Discos HDD', 'Almacenamiento tradicional'),
(34, 'Tarjetas Graficas', 'Componentes para video'),
(35, 'Fuentes de Poder', 'Alimentacion del equipo'),
(36, 'Gabinetes', 'Carcasas para PC'),
(37, 'Mousepad', 'Superficies para mouse'),
(38, 'Parlantes', 'Audio externo'),
(39, 'Microfonos', 'Captura de sonido'),
(40, 'Cables HDMI', 'Conexion de video'),
(41, 'Cables USB', 'Conexion de dispositivos'),
(42, 'Adaptadores', 'Conversion de conexiones'),
(43, 'Hubs USB', 'Multiplicadores de puertos'),
(44, 'Ventiladores', 'Refrigeracion del equipo'),
(45, 'Controles Gamer', 'Mandos para videojuegos'),
(46, 'Sillas Gamer', 'Mobiliario gamer'),
(47, 'Luces RGB', 'Iluminacion para PC'),
(48, 'Bocinas Bluetooth', 'Audio inalambrico'),
(49, 'Soportes', 'Bases para dispositivos'),
(50, 'Accesorios Oficina', 'Complementos de computadora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Carlos Hernandez', '70012345', 'carlos.h@gmail.com', 'San Salvador'),
(2, 'Maria Lopez', '70123456', 'maria.lopez@gmail.com', 'Santa Tecla'),
(3, 'Jose Martinez', '70234567', 'jose.martinez@gmail.com', 'Soyapango'),
(4, 'Ana Garcia', '70345678', 'ana.garcia@gmail.com', 'Mejicanos'),
(5, 'Luis Rodriguez', '70456789', 'luis.rodriguez@gmail.com', 'San Miguel'),
(6, 'Sofia Perez', '70567890', 'sofia.perez@gmail.com', 'Santa Ana'),
(7, 'Daniel Ramirez', '70678901', 'daniel.ramirez@gmail.com', 'La Libertad'),
(8, 'Valeria Cruz', '70789012', 'valeria.cruz@gmail.com', 'Antiguo Cuscatlan'),
(9, 'Fernando Diaz', '70890123', 'fernando.diaz@gmail.com', 'Ilopango'),
(10, 'Camila Flores', '70901234', 'camila.flores@gmail.com', 'Sonsonate'),
(11, 'Andres Morales', '71012345', 'andres.morales@gmail.com', 'Usulutan'),
(12, 'Paola Castillo', '71123456', 'paola.castillo@gmail.com', 'La Union'),
(13, 'Ricardo Sanchez', '71234567', 'ricardo.sanchez@gmail.com', 'San Salvador'),
(14, 'Gabriela Torres', '71345678', 'gabriela.torres@gmail.com', 'Santa Tecla'),
(15, 'Diego Mendoza', '71456789', 'diego.mendoza@gmail.com', 'Soyapango'),
(16, 'Andrea Herrera', '71567890', 'andrea.herrera@gmail.com', 'Mejicanos'),
(17, 'Kevin Rivas', '71678901', 'kevin.rivas@gmail.com', 'San Miguel'),
(18, 'Natalia Romero', '71789012', 'natalia.romero@gmail.com', 'Santa Ana'),
(19, 'Miguel Castro', '71890123', 'miguel.castro@gmail.com', 'San Salvador'),
(20, 'Isabella Vargas', '71901234', 'isabella.vargas@gmail.com', 'Santa Tecla'),
(21, 'Oscar Molina', '72012345', 'oscar.molina@gmail.com', 'La Libertad'),
(22, 'Fernanda Reyes', '72123456', 'fernanda.reyes@gmail.com', 'San Salvador'),
(23, 'Javier Ortiz', '72234567', 'javier.ortiz@gmail.com', 'Santa Ana'),
(24, 'Nicole Aguilar', '72345678', 'nicole.aguilar@gmail.com', 'San Miguel'),
(25, 'Samuel Navarro', '72456789', 'samuel.navarro@gmail.com', 'Soyapango');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(1, 1, 1, 1, 25.99),
(2, 2, 3, 1, 45.99),
(3, 3, 5, 1, 75.99),
(4, 4, 7, 1, 150.00),
(5, 5, 9, 1, 90.00),
(6, 6, 11, 2, 61.98),
(7, 7, 14, 1, 110.00),
(8, 8, 15, 1, 55.00),
(9, 9, 17, 1, 250.00),
(10, 10, 19, 1, 85.00),
(11, 11, 21, 1, 120.00),
(12, 12, 22, 2, 50.00),
(13, 13, 23, 1, 55.00),
(14, 14, 24, 1, 18.00),
(15, 15, 25, 2, 40.00),
(16, 16, 6, 1, 35.50),
(17, 17, 12, 1, 65.99),
(18, 18, 18, 1, 400.00),
(19, 19, 20, 1, 95.00),
(20, 20, 16, 1, 70.00),
(21, 21, 4, 1, 15.00),
(22, 22, 8, 1, 220.00),
(23, 23, 2, 1, 30.50),
(24, 24, 13, 1, 45.00),
(25, 25, 10, 3, 105.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(100) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre_empleado`, `cargo`, `telefono`) VALUES
(1, 'Juan Perez', 'Administrador', '73012345'),
(2, 'Laura Martinez', 'Vendedora', '73123456'),
(3, 'Carlos Ramirez', 'Tecnico de computadoras', '73234567'),
(4, 'Sofia Hernandez', 'Cajera', '73345678'),
(5, 'Miguel Lopez', 'Encargado de inventario', '73456789'),
(6, 'Daniel Garcia', 'Vendedor', '73567890'),
(7, 'Andrea Rodriguez', 'Soporte tecnico', '73678901'),
(8, 'Kevin Morales', 'Administrador', '73789012'),
(9, 'Valentina Cruz', 'Vendedora', '73890123'),
(10, 'Fernando Castillo', 'Tecnico', '73901234'),
(11, 'Gabriela Torres', 'Cajera', '74012345'),
(12, 'Jose Mendoza', 'Encargado de bodega', '74123456'),
(13, 'Natalia Flores', 'Vendedora', '74234567'),
(14, 'Ricardo Sanchez', 'Soporte tecnico', '74345678'),
(15, 'Camila Romero', 'Administradora', '74456789'),
(16, 'Luis Vargas', 'Tecnico de redes', '74567890'),
(17, 'Paola Reyes', 'Vendedora', '74678901'),
(18, 'Diego Castro', 'Cajero', '74789012'),
(19, 'Maria Ortiz', 'Servicio al cliente', '74890123'),
(20, 'Samuel Navarro', 'Inventario', '74901234'),
(21, 'Nicole Aguilar', 'Vendedora', '75012345'),
(22, 'Oscar Molina', 'Tecnico', '75123456'),
(23, 'Fernanda Diaz', 'Administradora', '75234567'),
(24, 'Javier Rivas', 'Soporte tecnico', '75345678'),
(25, 'Isabella Herrera', 'Vendedora', '75456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `descripcion`, `precio`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Mouse Logitech G203', 'Mouse gamer RGB 8000 DPI', 25.99, 20, 1, 1),
(2, 'Mouse Redragon M711', 'Mouse gamer con luces RGB', 30.50, 15, 1, 2),
(3, 'Teclado Redragon K552', 'Teclado mecanico gamer', 45.99, 12, 2, 3),
(4, 'Teclado Logitech K120', 'Teclado USB oficina', 15.00, 25, 2, 4),
(5, 'Audifonos HyperX Cloud', 'Audifonos gamer profesionales', 75.99, 10, 3, 5),
(6, 'Audifonos Logitech H390', 'Audifonos con microfono', 35.50, 18, 3, 6),
(7, 'Monitor Samsung 24 pulgadas', 'Monitor Full HD', 150.00, 8, 4, 7),
(8, 'Monitor LG 27 pulgadas', 'Monitor IPS profesional', 220.00, 6, 4, 8),
(9, 'Webcam Logitech C920', 'Camara Full HD', 90.00, 14, 5, 9),
(10, 'Webcam Genius FaceCam', 'Camara para videollamadas', 35.00, 20, 5, 10),
(11, 'Memoria RAM Kingston 8GB', 'Memoria DDR4', 30.99, 30, 6, 11),
(12, 'Memoria RAM Corsair 16GB', 'Memoria DDR4 gamer', 65.99, 15, 6, 12),
(13, 'SSD Kingston 480GB', 'Disco solido rapido', 45.00, 20, 7, 13),
(14, 'SSD Samsung 1TB', 'Disco solido alta velocidad', 110.00, 12, 7, 14),
(15, 'Disco HDD Seagate 2TB', 'Disco duro externo', 70.00, 10, 8, 15),
(16, 'Disco HDD Western Digital 1TB', 'Almacenamiento interno', 55.00, 18, 8, 16),
(17, 'Tarjeta Grafica GTX 1660', 'Tarjeta de video gamer', 250.00, 5, 9, 17),
(18, 'Tarjeta Grafica RTX 3060', 'Tarjeta grafica avanzada', 400.00, 4, 9, 18),
(19, 'Fuente Corsair 650W', 'Fuente de poder certificada', 85.00, 10, 10, 19),
(20, 'Fuente EVGA 700W', 'Fuente para gaming', 95.00, 8, 10, 20),
(21, 'Gabinete Cooler Master', 'Gabinete con RGB', 120.00, 7, 11, 21),
(22, 'Mousepad RGB Gamer', 'Mousepad con iluminacion', 25.00, 20, 12, 22),
(23, 'Microfono Fifine', 'Microfono USB profesional', 55.00, 13, 14, 23),
(24, 'Hub USB 4 Puertos', 'Multiplicador USB', 18.00, 25, 18, 24),
(25, 'Ventilador RGB', 'Ventilador para PC', 20.00, 22, 19, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Tech Solutions SV', '70112233', 'techsolutions@gmail.com', 'San Salvador'),
(2, 'PC Master', '70223344', 'pcmaster@gmail.com', 'Santa Tecla'),
(3, 'Digital World', '70334455', 'digitalworld@gmail.com', 'Soyapango'),
(4, 'Compu Center', '70445566', 'compucenter@gmail.com', 'Mejicanos'),
(5, 'Electronica Plus', '70556677', 'electronicaplus@gmail.com', 'San Miguel'),
(6, 'Gaming Store', '70667788', 'gamingstore@gmail.com', 'Santa Ana'),
(7, 'Hardware SV', '70778899', 'hardwaresv@gmail.com', 'San Salvador'),
(8, 'Importaciones PC', '70889900', 'importacionespc@gmail.com', 'La Libertad'),
(9, 'Mega Tecnologia', '70990011', 'megatecnologia@gmail.com', 'Antiguo Cuscatlan'),
(10, 'PC Express', '71001122', 'pcexpress@gmail.com', 'San Salvador'),
(11, 'Cyber Tech', '71112233', 'cybertech@gmail.com', 'Ilopango'),
(12, 'Smart Devices', '71223344', 'smartdevices@gmail.com', 'Santa Tecla'),
(13, 'Gamer Zone', '71334455', 'gamerzone@gmail.com', 'San Salvador'),
(14, 'Nova Electronics', '71445566', 'novaelectronics@gmail.com', 'Sonsonate'),
(15, 'Tecno Store', '71556677', 'tecnostore@gmail.com', 'Usulutan'),
(16, 'Master Components', '71667788', 'mastercomponents@gmail.com', 'San Miguel'),
(17, 'Digital Market', '71778899', 'digitalmarket@gmail.com', 'La Union'),
(18, 'PC Factory', '71889900', 'pcfactory@gmail.com', 'San Salvador'),
(19, 'Global Hardware', '71990011', 'globalhardware@gmail.com', 'Santa Ana'),
(20, 'Elite Computers', '72001122', 'elitecomputers@gmail.com', 'La Libertad'),
(21, 'Pro Gaming', '72112233', 'progaming@gmail.com', 'San Salvador'),
(22, 'Byte Solutions', '72223344', 'bytesolutions@gmail.com', 'Santa Tecla'),
(23, 'Electronix SV', '72334455', 'electronixsv@gmail.com', 'San Miguel'),
(24, 'Tecnologia Total', '72445566', 'tecnologiatotal@gmail.com', 'San Salvador'),
(25, 'Accesorios Digitales', '72556677', 'accesoriosdigitales@gmail.com', 'Soyapango');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha_venta`, `total`, `id_cliente`, `id_empleado`) VALUES
(1, '2026-01-05', 25.99, 1, 1),
(2, '2026-01-06', 45.99, 2, 2),
(3, '2026-01-07', 75.99, 3, 3),
(4, '2026-01-08', 150.00, 4, 4),
(5, '2026-01-09', 90.00, 5, 5),
(6, '2026-01-10', 30.99, 6, 6),
(7, '2026-01-11', 110.00, 7, 7),
(8, '2026-01-12', 55.00, 8, 8),
(9, '2026-01-13', 250.00, 9, 9),
(10, '2026-01-14', 85.00, 10, 10),
(11, '2026-01-15', 120.00, 11, 11),
(12, '2026-01-16', 25.00, 12, 12),
(13, '2026-01-17', 55.00, 13, 13),
(14, '2026-01-18', 18.00, 14, 14),
(15, '2026-01-19', 20.00, 15, 15),
(16, '2026-01-20', 35.50, 16, 16),
(17, '2026-01-21', 65.99, 17, 17),
(18, '2026-01-22', 400.00, 18, 18),
(19, '2026-01-23', 95.00, 19, 19),
(20, '2026-01-24', 70.00, 20, 20),
(21, '2026-01-25', 15.00, 21, 21),
(22, '2026-01-26', 220.00, 22, 22),
(23, '2026-01-27', 30.50, 23, 23),
(24, '2026-01-28', 45.00, 24, 24),
(25, '2026-01-29', 110.00, 25, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
