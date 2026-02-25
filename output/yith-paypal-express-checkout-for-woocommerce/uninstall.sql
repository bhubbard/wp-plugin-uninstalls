-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_yith-paypal-ec_settings', 'ywsbs_suspend_for_failed_recurring_payment', 'yith_paypal_ec_warning_message_dismissed', 'yith_paypal_ec_subscription_warning_message_dismissed', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_agreement_id', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'shipping_first_name', 'shipping_last_name', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_agreement_id', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'shipping_first_name', 'shipping_last_name', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_agreement_id', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'shipping_first_name', 'shipping_last_name', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_agreement_id', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'shipping_first_name', 'shipping_last_name', 'dismissed_wp_pointers', 'blog-cats');

