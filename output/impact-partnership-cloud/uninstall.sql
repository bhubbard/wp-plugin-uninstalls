-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('impact_existing_user', 'impact_request_value', 'impact_settings_option_name', 'impact_integration_delete_option_name');

