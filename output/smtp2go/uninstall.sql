-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smtp2go_api_key', 'smtp2go_enabled', 'smtp2go_enable_api_logs', 'smtp2go_from_address', 'smtp2go_force_from_address', 'smtp2go_from_name', 'smtp2go_custom_headers');

