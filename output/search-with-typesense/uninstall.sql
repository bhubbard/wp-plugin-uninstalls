-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cm_typesense_plugin_activate', 'typesense_customizer_instant_search', 'cm_typesense_admin_settings');

