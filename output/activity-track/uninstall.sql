-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atk_known_plugins', 'atk_options', 'atk_ai_db_version', 'atk_notification');
DELETE FROM wp_options WHERE option_name LIKE 'atkai_geoiploc_%';

