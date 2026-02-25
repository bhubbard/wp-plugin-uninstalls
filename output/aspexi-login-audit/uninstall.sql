-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aspexiloginaudit_options', 'aspexiloginaudit_login_info');

