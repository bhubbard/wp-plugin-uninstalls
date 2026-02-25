-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('messageflow-settings-account-sid', 'messageflow-settings-auth-token', 'messageflow-settings-from-phone', 'messageflow-user-id', 'messageflow-settings-visibility-permission', 'messageflow-settings-enable-test-mode', 'messageflow-settings-include-statuses', 'messageflow-settings-test-account-sid', 'messageflow-settings-test-auth-token', 'messageflow-settings-test-from-phone', 'messageflow-settings-default-message');
DELETE FROM wp_options WHERE option_name LIKE 'messageflow-settings-%';
DELETE FROM wp_options WHERE option_name LIKE '%account-sid';
DELETE FROM wp_options WHERE option_name LIKE '%auth-token';
DELETE FROM wp_options WHERE option_name LIKE '%from-phone';
DELETE FROM wp_options WHERE option_name LIKE '%enable-test-mode';
DELETE FROM wp_options WHERE option_name LIKE '%test-account-sid';
DELETE FROM wp_options WHERE option_name LIKE '%test-auth-token';
DELETE FROM wp_options WHERE option_name LIKE '%test-from-phone';
DELETE FROM wp_options WHERE option_name LIKE '%checkout-sms-subscription-default';
DELETE FROM wp_options WHERE option_name LIKE '%include-statuses';
DELETE FROM wp_options WHERE option_name LIKE '%default-message';
DELETE FROM wp_options WHERE option_name LIKE '%visibility-permission';
DELETE FROM wp_options WHERE option_name LIKE '%notify-service-sid';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('messageflow_order_noti_is_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('messageflow_order_noti_is_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('messageflow_order_noti_is_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('messageflow_order_noti_is_subscribed');

