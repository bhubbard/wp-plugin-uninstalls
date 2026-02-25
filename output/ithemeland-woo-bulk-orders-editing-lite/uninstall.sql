-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wobel-version', 'wobe_update_table_log', 'wobe_meta_fields', 'wobe_column_fields', 'woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_enabled', 'wobe_get_orders_otb', 'itbbc_scheduler_version', 'wobel_some_setting', 'wobel_usage_track', 'ithemeland_activation_email', 'wobel_onboarding', 'wobel_opt_in');
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again';
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

