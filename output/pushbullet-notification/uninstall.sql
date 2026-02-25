-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fnpn_additional_key_mapping', 'fnpn_logs', '_fnpn_additional_app_keys', 'fnpn_pushbullet_notifications_settings', 'update_plugins', 'update_themes', 'update_core');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Pushbullet notification', 'fnpn_user_key', 'fnpn_user_notify_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('Pushbullet notification', 'fnpn_user_key', 'fnpn_user_notify_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('Pushbullet notification', 'fnpn_user_key', 'fnpn_user_notify_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Pushbullet notification', 'fnpn_user_key', 'fnpn_user_notify_posts');

