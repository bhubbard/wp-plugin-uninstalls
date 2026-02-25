-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-callback-url';
DELETE FROM wp_options WHERE option_name LIKE '%-redirect-url';
DELETE FROM wp_options WHERE option_name LIKE '%-login-options';
DELETE FROM wp_options WHERE option_name LIKE '%-node-banlist';
DELETE FROM wp_options WHERE option_name LIKE '%-node-allowlist';
DELETE FROM wp_options WHERE option_name LIKE '%-usercreation';
DELETE FROM wp_options WHERE option_name LIKE '%-usercreation-prefix';
DELETE FROM wp_options WHERE option_name LIKE '%-usercreation-roles';

