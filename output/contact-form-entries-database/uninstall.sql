-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfedcw_settings', 'cfedcw_version', 'cfedcw_deactivated_at', 'cfedcw_no_supported_forms');

