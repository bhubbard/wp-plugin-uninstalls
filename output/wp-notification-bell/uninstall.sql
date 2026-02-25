-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wnbell_options', 'wnbell_settings', 'wnbell_notif_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wnbell_db_version', 'wnbell_change_metakeys_complete', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wnbell_link', 'wnbell_title', 'wnbell_recipient_role', 'wnbell_recipient_username', 'wnbell_incremented_once', 'wnbell_unseen', 'wnbell_notification_id', 'post_id', 'first_publish_time', 'wnbell_unseen_bbpress_replies', 'wnbell_bp_last_seen', 'wnbell_seen_notification_post', 'wnbell_seen_comments_ids', 'wnbell_seen_bbp_ids', 'wnbell_seen_woocommerce_ids', 'wnbell_unseen_comments', 'wnbell_woocommerce_updates', 'wnbell_last_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('wnbell_link', 'wnbell_title', 'wnbell_recipient_role', 'wnbell_recipient_username', 'wnbell_incremented_once', 'wnbell_unseen', 'wnbell_notification_id', 'post_id', 'first_publish_time', 'wnbell_unseen_bbpress_replies', 'wnbell_bp_last_seen', 'wnbell_seen_notification_post', 'wnbell_seen_comments_ids', 'wnbell_seen_bbp_ids', 'wnbell_seen_woocommerce_ids', 'wnbell_unseen_comments', 'wnbell_woocommerce_updates', 'wnbell_last_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('wnbell_link', 'wnbell_title', 'wnbell_recipient_role', 'wnbell_recipient_username', 'wnbell_incremented_once', 'wnbell_unseen', 'wnbell_notification_id', 'post_id', 'first_publish_time', 'wnbell_unseen_bbpress_replies', 'wnbell_bp_last_seen', 'wnbell_seen_notification_post', 'wnbell_seen_comments_ids', 'wnbell_seen_bbp_ids', 'wnbell_seen_woocommerce_ids', 'wnbell_unseen_comments', 'wnbell_woocommerce_updates', 'wnbell_last_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wnbell_link', 'wnbell_title', 'wnbell_recipient_role', 'wnbell_recipient_username', 'wnbell_incremented_once', 'wnbell_unseen', 'wnbell_notification_id', 'post_id', 'first_publish_time', 'wnbell_unseen_bbpress_replies', 'wnbell_bp_last_seen', 'wnbell_seen_notification_post', 'wnbell_seen_comments_ids', 'wnbell_seen_bbp_ids', 'wnbell_seen_woocommerce_ids', 'wnbell_unseen_comments', 'wnbell_woocommerce_updates', 'wnbell_last_seen');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wnbell_item_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wnbell_item_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wnbell_item_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wnbell_item_name_%';

