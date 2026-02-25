-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('form04_sitelock_settings', 'form04_sitelock_login_error');

