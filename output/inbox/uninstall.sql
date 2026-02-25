-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_inbox_messages', 'wp_inbox_gplus_api', 'wpinbox_options', 'wp_inbox_live_chat_settings', 'wp_inbox_admin_msg', 'wp_inbox_admin_msg_id', 'active_sitewide_plugins', 'pages_layout');
DELETE FROM wp_options WHERE option_name LIKE '%_staff';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mail_notification', '_wp_inbox_timezone', '_tlms_ustatus', '_tlms_astatus', 'wp_inbox_read_msg', 'wp_user_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('mail_notification', '_wp_inbox_timezone', '_tlms_ustatus', '_tlms_astatus', 'wp_inbox_read_msg', 'wp_user_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('mail_notification', '_wp_inbox_timezone', '_tlms_ustatus', '_tlms_astatus', 'wp_inbox_read_msg', 'wp_user_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mail_notification', '_wp_inbox_timezone', '_tlms_ustatus', '_tlms_astatus', 'wp_inbox_read_msg', 'wp_user_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_unread_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_unread_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_unread_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_unread_status_%';

