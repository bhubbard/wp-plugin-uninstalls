-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopnotify_cart_timeout', 'shopnotify_first_notification_timeout', 'shopnotify_second_notification_timeout', 'shopnotify_third_notification_timeout', 'shopnotify_delete_cart_after_timeout', 'shopnotify_cart_deletion_timeout', 'shpn_whatsapp_license_key', 'shopnotify_first_shpn_template', 'shopnotify_second_shpn_template', 'shopnotify_third_shpn_template', 'shpn_whatsapp_license_status', 'Shopnotify_redirect', 'Shopnotify_enable_whatsapp', 'shopnotify_first_email_template', 'shopnotify_first_email_subject', 'shopnotify_second_email_template', 'shopnotify_second_email_subject', 'shopnotify_third_email_template', 'shopnotify_third_email_subject', 'shpn_store_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

