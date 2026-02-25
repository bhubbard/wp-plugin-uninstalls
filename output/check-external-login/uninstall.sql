-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('check_external_login_url');
DELETE FROM wp_options WHERE option_name LIKE 'check_external_login_%';

