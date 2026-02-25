-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expire_users_notification_message', 'expire_users_notification_admin_message', 'expire_users_default_expire_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_expire_user_date', '_expire_user_settings', '_expire_user_expired');
DELETE FROM wp_usermeta WHERE meta_key IN ('_expire_user_date', '_expire_user_settings', '_expire_user_expired');
DELETE FROM wp_termmeta WHERE meta_key IN ('_expire_user_date', '_expire_user_settings', '_expire_user_expired');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_expire_user_date', '_expire_user_settings', '_expire_user_expired');

