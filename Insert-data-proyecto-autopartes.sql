
insert into proyecto (id_proyecto, nombre_proyecto, cliente, fecha_inicio, fecha_finalizacion) values
(1, 'Paragolpes VW Polo', 'Volkswagen', '2024-01-05', '2024-06-30'),
(2, 'IP Chevrolet Tracker', 'General Motors', '2024-03-10', '2024-08-15');


insert into material (id_material, nombre_material, proveedor, color, propiedades, proveedor_local) values
(1, 'Polipropileno', 'Petroquímica S.A.', 'Negro', 'Resistente a impactos', 1),
(2, 'ABS', 'Plásticos Norte', 'Gris', 'Buen acabado', 0),
(3, 'PP+EPDM', 'PoliSur', 'Negro Mate', 'Alta flexibilidad', 1);


insert into pieza (id_pieza, id_proyecto, nombre_pieza, peso, id_material, requiere_pintura, requiere_armado) values
(1, 1, 'Paragolpe Delantero', 4.5, 1, 1, 1),
(2, 1, 'Paragolpe Trasero', 4.2, 1, 1, 1),
(3, 1, 'Mudguard Derecho', 1.2, 3, 0, 1),
(4, 1, 'Embellecedor Lateral', 0.8, 2, 1, 0),
(5, 2, 'IP (Instrument Panel)', 6.0, 2, 1, 1),
(6, 2, 'Door Panel Izquierdo', 3.2, 3, 1, 1),
(7, 2, 'Apoya Brazos', 0.9, 3, 0, 1);


insert into armado (id_armado, id_pieza, componente, cantidad) values
(1, 1, 'Clip Antirruido', 6),
(2, 2, 'Arandela Plástica', 4),
(3, 5, 'Tornillo M5', 8),
(4, 6, 'Clip de Presión', 5);


insert into sub_componentes (id_subcomponente, id_armado, nombre_componente, cantidad_necesaria) values
(1, 1, 'Espaciador Corto', 2),
(2, 1, 'Tope de goma', 2),
(3, 2, 'Tuerca M5', 4),
(4, 3, 'Arandela Metálica', 8);


insert into molde (id_molde, numero_asset, descripcion) values
(1, 'M-VW01', 'Molde paragolpes delantero VW'),
(2, 'M-VW02', 'Molde paragolpes trasero VW'),
(3, 'M-GM01', 'Molde IP Tracker'),
(4, 'M-GM02', 'Molde door panel Tracker');


insert into inyectora (id_maquina_inyectora, modelo, tonelaje_presion) values
(1, 'ENGEL 350', '350T'),
(2, 'ARBURG 200', '200T'),
(3, 'BATTENFELD 300', '300T');


insert into proceso_inyeccion (id_proceso_inyeccion, id_pieza, id_molde, id_maquina_inyectora, temperatura, presion, tiempo_ciclo) values
(1, 1, 1, 1, 225.0, 82.0, 35.0),
(2, 2, 2, 1, 223.0, 81.5, 34.0),
(3, 5, 3, 2, 210.0, 78.0, 28.0),
(4, 6, 4, 3, 212.5, 80.0, 30.0);


insert into pintura (id_pintura, id_pieza, base, color, clear) values
(1, 1, 'PU', 'Negro Brillante', 1),
(2, 2, 'PU', 'Negro Brillante', 1),
(3, 4, 'Epoxi', 'Gris Mate', 0),
(4, 5, 'Acrílica', 'Negro Texturado', 1),
(5, 6, 'Epoxi', 'Gris Claro', 0);
