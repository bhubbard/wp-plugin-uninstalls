-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websms-login', 'websms-password', 'websms-phone1', 'websms-phone2', 'websms-phone3', 'websms-phone4');
DELETE FROM wp_options WHERE option_name LIKE 'websms-%';
DELETE FROM wp_options WHERE option_name LIKE 'websms-phone%';

