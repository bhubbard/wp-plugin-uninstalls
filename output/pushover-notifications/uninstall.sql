-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ckpn_additional_key_mapping', 'ckpn_logs', '_ckpn_additional_app_keys', 'ckpn_pushover_notifications_settings', '_ckpn_users_with_keys', '_wp_push_extensions_listing', 'update_plugins', 'update_themes', 'update_core');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ckpn_user_notify_posts', 'ckpn_user_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('ckpn_user_notify_posts', 'ckpn_user_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('ckpn_user_notify_posts', 'ckpn_user_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ckpn_user_notify_posts', 'ckpn_user_key');

