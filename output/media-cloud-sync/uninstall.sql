-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_db_upgrade_version';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_queue';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_total';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_completed';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_started';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_imagify_data', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_imagify_data', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_imagify_data', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_imagify_data', '_wp_attachment_metadata');

