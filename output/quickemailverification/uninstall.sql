-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qev_email_validator', 'QEV_PLUGIN_VER');

