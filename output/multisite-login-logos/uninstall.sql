-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multisite_login_logos_settings', 'multisite_login_logos_custom');

