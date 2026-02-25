-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blfpst_options', '_blfpst_plugin_version', '_blfpst_db_lock', '_blfpst_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_blfpst_subscribe_mailmagazine', '_blfpst_text_only', '_blfpst_content_type_html', '_blfpst_send_mail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_blfpst_subscribe_mailmagazine', '_blfpst_text_only', '_blfpst_content_type_html', '_blfpst_send_mail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_blfpst_subscribe_mailmagazine', '_blfpst_text_only', '_blfpst_content_type_html', '_blfpst_send_mail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_blfpst_subscribe_mailmagazine', '_blfpst_text_only', '_blfpst_content_type_html', '_blfpst_send_mail_id');

