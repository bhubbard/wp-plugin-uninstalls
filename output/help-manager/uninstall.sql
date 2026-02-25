-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('help-manager-permissions', 'wphm_default_document', 'help-manager-advanced', 'help-manager-admin', 'help-manager-document', 'help-manager-custom-css');
DELETE FROM wp_options WHERE option_name LIKE '%-document';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-css';
DELETE FROM wp_options WHERE option_name LIKE '%-admin';
DELETE FROM wp_options WHERE option_name LIKE '%-permissions';
DELETE FROM wp_options WHERE option_name LIKE '%-advanced';

