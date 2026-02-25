-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_notifications_settings_dogbytemarketing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_user_id', '_read_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('_user_id', '_read_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('_user_id', '_read_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_user_id', '_read_notifications');

