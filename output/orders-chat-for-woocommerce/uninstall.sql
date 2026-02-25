-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('order_messenger_notifications_last_sending', 'om_need_flash_rewrite_rules', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'order_messenger_activated', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%email_notification';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_om_purchase_message', '_om_purchase_attachment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_om_purchase_message', '_om_purchase_attachment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_om_purchase_message', '_om_purchase_attachment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_om_purchase_message', '_om_purchase_attachment_id');

