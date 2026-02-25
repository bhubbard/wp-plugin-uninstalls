-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rao_firebase_user_credentials', 'rao_chat_admin_display_name', 'rao_chat_admin', 'rao_chat_frontend_status', 'raopress_chat_admin_pro_license', 'raopress_chat_admin_pro_status', 'firebase-chat-settings', 'rao_auth_error', 'rao_firebase_global_error', 'rao_login_error', 'raopress_chat_pro_notice_display', 'rao_firebase_app_config_error', 'rao_firebase_db_config_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chat_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('chat_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('chat_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chat_id');

