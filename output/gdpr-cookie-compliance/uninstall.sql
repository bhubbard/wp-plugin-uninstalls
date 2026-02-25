-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdpr_cc_has_database', 'gdpr_cc_db_created', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'gdpr_hide_update_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'plugin_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gdpr_cc_dismiss_stamp_p', 'gdpr_cc_dismiss_stamp', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('gdpr_cc_dismiss_stamp_p', 'gdpr_cc_dismiss_stamp', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('gdpr_cc_dismiss_stamp_p', 'gdpr_cc_dismiss_stamp', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gdpr_cc_dismiss_stamp_p', 'gdpr_cc_dismiss_stamp', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%';

