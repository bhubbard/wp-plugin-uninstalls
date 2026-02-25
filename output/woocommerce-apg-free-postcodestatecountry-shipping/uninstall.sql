-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apg_shipping_clases_envio', 'apg_shipping_roles_usuario', 'apg_shipping_atributos', 'apg_shipping_metodos_de_pago', 'apg_shipping_zonas_de_envio', 'apg_free_shipping_plugin');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'apg_shipping_icono_%';
DELETE FROM wp_options WHERE option_name LIKE 'apg_shipping_%';
DELETE FROM wp_options WHERE option_name LIKE 'apg_shipping_metodos_envio_%';

