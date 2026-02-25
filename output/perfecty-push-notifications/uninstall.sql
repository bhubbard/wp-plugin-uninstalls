-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('perfecty_push', 'perfecty_push_activated', 'perfecty_push_version', 'perfecty_push_db_version', 'perfecty_push_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_perfecty_push_send_on_publish', '_perfecty_push_notification_custom_title', '_perfecty_push_notification_custom_body');
DELETE FROM wp_usermeta WHERE meta_key IN ('_perfecty_push_send_on_publish', '_perfecty_push_notification_custom_title', '_perfecty_push_notification_custom_body');
DELETE FROM wp_termmeta WHERE meta_key IN ('_perfecty_push_send_on_publish', '_perfecty_push_notification_custom_title', '_perfecty_push_notification_custom_body');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_perfecty_push_send_on_publish', '_perfecty_push_notification_custom_title', '_perfecty_push_notification_custom_body');

