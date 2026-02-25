-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publish_post_notification_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_notified');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_notified');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_notified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_notified');

