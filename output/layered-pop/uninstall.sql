-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpl_version', 'lpl_cookie_value');
DELETE FROM wp_options WHERE option_name LIKE 'lpl_%';

