-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('montypay_recurring_schedules', 'woocommerce_montypay_hosted_payment_settings', 'woocommerce_montypay_hosted_apple_pay_gateway_settings', 'woocommerce_montypay_s2s_payment_settings', 'woocommerce_montypay_stripe_payment_settings', 'woocommerce_montypay_wallets_payment_settings', 'wc_admin_dashboard_counts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_montypay_recurring_enabled', '_montypay_recurring_schedule_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_montypay_recurring_enabled', '_montypay_recurring_schedule_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_montypay_recurring_enabled', '_montypay_recurring_schedule_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_montypay_recurring_enabled', '_montypay_recurring_schedule_id');

