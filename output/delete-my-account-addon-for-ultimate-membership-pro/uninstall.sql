-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ihc_general_login_default_page');
DELETE FROM wp_options WHERE option_name LIKE '%-enabled';

