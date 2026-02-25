-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_enabled', 'iwrasl_first_order_date', 'iwrasl_top_toolbar_dismiss', 'iwrasl_some_setting', 'iwrasl_usage_track', 'ithemeland_activation_email', 'iwrasl_onboarding', 'iwrasl_opt_in');
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iwrasl_permissions');
DELETE FROM wp_usermeta WHERE meta_key IN ('iwrasl_permissions');
DELETE FROM wp_termmeta WHERE meta_key IN ('iwrasl_permissions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iwrasl_permissions');

