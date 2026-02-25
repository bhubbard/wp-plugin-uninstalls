-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crm_perks_upload_folder', 'cfx_form_install_entries_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_version';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_msgs';
DELETE FROM wp_options WHERE option_name LIKE '%_upload_folder';
DELETE FROM wp_options WHERE option_name LIKE '%_install_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form');

