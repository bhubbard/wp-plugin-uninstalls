-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'china_payments_area_%';
DELETE FROM wp_options WHERE option_name LIKE '%_stripe_apple_pay_domain';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('china_payments_payment_intent_id', 'china_payments_is_live', 'china_payments_payment_intent_secret', 'membership_level_id', 'payment_amount', 'payment_currency', 'return_url', 'button_image_url', 'button_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('china_payments_payment_intent_id', 'china_payments_is_live', 'china_payments_payment_intent_secret', 'membership_level_id', 'payment_amount', 'payment_currency', 'return_url', 'button_image_url', 'button_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('china_payments_payment_intent_id', 'china_payments_is_live', 'china_payments_payment_intent_secret', 'membership_level_id', 'payment_amount', 'payment_currency', 'return_url', 'button_image_url', 'button_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('china_payments_payment_intent_id', 'china_payments_is_live', 'china_payments_payment_intent_secret', 'membership_level_id', 'payment_amount', 'payment_currency', 'return_url', 'button_image_url', 'button_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_notification_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_notification_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_notification_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_notification_id';

