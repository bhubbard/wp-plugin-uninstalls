-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmps_plugin_mapas', 'wpmps_metodo_recuperar_svg', 'wpmps_border_color', 'wpmps_background_color', 'wpmps_background_provincia_color', 'wpmps_has_link_provincia_color', 'wpmps_hover_provincia_color', 'wpmps_show_border', 'wpmps_rellenar_provincias_con_enlace', 'wpmps_version', 'wpmps_separador1', 'wpmps_separador2', 'wpmps_separador3');
DELETE FROM wp_options WHERE option_name LIKE '%_show_border';
DELETE FROM wp_options WHERE option_name LIKE '%_border_color';
DELETE FROM wp_options WHERE option_name LIKE '%_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_background_provincia_color';
DELETE FROM wp_options WHERE option_name LIKE '%_hover_provincia_color';
DELETE FROM wp_options WHERE option_name LIKE '%_rellenar_provincias_con_enlace';
DELETE FROM wp_options WHERE option_name LIKE '%_has_link_provincia_color';
DELETE FROM wp_options WHERE option_name LIKE '%_metodo_recuperar_svg';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

