-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exclusivo_entrada_plugin_categoria_value', 'exclusivo_entrada_plugin_value');

