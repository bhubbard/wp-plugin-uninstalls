-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tracknotify_app_key', 'tracknotify_app_secret', 'active_sitewide_plugins', 'tracknotify_admin_notification_status', 'tracknotify_customer_notification_status', 'tracknotify_admin_notification_text', 'tracknotify_service', 'tracknotify_admin_phone', 'tracknotify_customer_notification_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_phone');

