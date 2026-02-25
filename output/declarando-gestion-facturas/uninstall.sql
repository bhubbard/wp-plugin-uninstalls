-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('declarando_options', 'declarando_gestion_facturas_options', 'settings_errors', 'declarando_gestion_facturas_update_data');

