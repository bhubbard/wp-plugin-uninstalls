-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apg_city_settings', 'apg_city_last_import', 'apg_city_rows', 'apg_city_last_hash', 'apg_city_import_state', 'apg_city_plugin', 'apg_city_seed_scheduled', 'apg_city_import_lock');

