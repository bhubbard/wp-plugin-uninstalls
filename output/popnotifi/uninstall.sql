-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popnotifi_url_key', 'popnotifi_api_key', 'popnotifi_native_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pop_notifi_notification_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('pop_notifi_notification_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('pop_notifi_notification_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pop_notifi_notification_sent');

