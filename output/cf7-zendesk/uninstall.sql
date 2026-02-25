-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'cfx_form_install_entries_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_updates';
DELETE FROM wp_options WHERE option_name LIKE '%_crm';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_msgs';
DELETE FROM wp_options WHERE option_name LIKE '%_install_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', '_elementor_data');

