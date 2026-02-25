-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_uninstall';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_data';
DELETE FROM wp_options WHERE option_name LIKE '%_structure';
DELETE FROM wp_options WHERE option_name LIKE '%debug_cleanup';
DELETE FROM wp_options WHERE option_name LIKE '%convertkit_forms';
DELETE FROM wp_options WHERE option_name LIKE '%drip_account';
DELETE FROM wp_options WHERE option_name LIKE '%license_lastcheck';
DELETE FROM wp_options WHERE option_name LIKE '%aweber_lists';
DELETE FROM wp_options WHERE option_name LIKE '%cm_clients';
DELETE FROM wp_options WHERE option_name LIKE '%cm_lists';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_lists';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_maxinbound_template', '_maxinbound_data', '_maxinbound_options', '_wp_archive_meta_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_maxinbound_template', '_maxinbound_data', '_maxinbound_options', '_wp_archive_meta_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_maxinbound_template', '_maxinbound_data', '_maxinbound_options', '_wp_archive_meta_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_maxinbound_template', '_maxinbound_data', '_maxinbound_options', '_wp_archive_meta_status');

