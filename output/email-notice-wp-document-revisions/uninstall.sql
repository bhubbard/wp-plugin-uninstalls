-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdr_en_db_version', 'wpdr_en_set_email_from', 'wpdr_en_set_email_from_address', 'wpdr_en_set_notification_mode', 'wpdr_en_set_notification_about', 'wpdr_en_set_subject', 'wpdr_en_set_content', 'wpdr_en_set_exttext', 'wpdr_en_set_ext_attach', 'wpdr_en_set_repeat', 'wpdr_en_set_notification_log', 'auto_notification_result', 'auto_notification_message');
DELETE FROM wp_options WHERE option_name LIKE 'del_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpdr_en_user_notification', 'wpdr_en_user_attachment', '_rvy_base_post_id', 'wpdr_en_notification_sent', 'wpdr_en_ext_notice_sent', 'wpdr_en_addressees', 'wpdr_en_tm', 'wpdr_en_attach', 'wpdr_en_pause');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpdr_en_user_notification', 'wpdr_en_user_attachment', '_rvy_base_post_id', 'wpdr_en_notification_sent', 'wpdr_en_ext_notice_sent', 'wpdr_en_addressees', 'wpdr_en_tm', 'wpdr_en_attach', 'wpdr_en_pause');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpdr_en_user_notification', 'wpdr_en_user_attachment', '_rvy_base_post_id', 'wpdr_en_notification_sent', 'wpdr_en_ext_notice_sent', 'wpdr_en_addressees', 'wpdr_en_tm', 'wpdr_en_attach', 'wpdr_en_pause');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpdr_en_user_notification', 'wpdr_en_user_attachment', '_rvy_base_post_id', 'wpdr_en_notification_sent', 'wpdr_en_ext_notice_sent', 'wpdr_en_addressees', 'wpdr_en_tm', 'wpdr_en_attach', 'wpdr_en_pause');

