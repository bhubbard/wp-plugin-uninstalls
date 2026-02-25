-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hfcm_activation_date', 'hfcm_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hfcm_plugin_notice_dismissed', 'hfcm_file_edit_plugin_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('hfcm_plugin_notice_dismissed', 'hfcm_file_edit_plugin_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('hfcm_plugin_notice_dismissed', 'hfcm_file_edit_plugin_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hfcm_plugin_notice_dismissed', 'hfcm_file_edit_plugin_notice_dismissed');

