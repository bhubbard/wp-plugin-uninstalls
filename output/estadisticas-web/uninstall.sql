-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ga_plugin_id_seguimiento', 'ga_plugin_carga_asincrona', 'awe_plugin_id_seguimiento', 'awe_plugin_carga_asincrona');

