-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification_authDomain', 'notification_apiKey', 'notification_projectId', 'notification_storageBucket', 'notification_senderId', 'notification_appId', 'notification_jsonfile', 'notification_server_key', 'wpn_enable_for_post', 'wpn_post_message', 'wpn_post_icon', 'wpn_post_image');

