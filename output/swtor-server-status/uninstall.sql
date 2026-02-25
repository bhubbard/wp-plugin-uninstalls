-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swtor_server_status_morecss', 'swtor_server_status_css');
DELETE FROM wp_options WHERE option_name LIKE 'swtor_server_status_%';

