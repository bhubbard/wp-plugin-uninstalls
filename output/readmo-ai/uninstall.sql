-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('readmo_ai_settings', 'readmo_ai_auto_insert', 'readmo_ai_client_id', 'readmo_ai_path_info');

