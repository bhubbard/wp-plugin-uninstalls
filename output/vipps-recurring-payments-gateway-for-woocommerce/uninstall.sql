-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_kco_settings', 'woocommerce_myaccount_page_id', 'woocommerce_vipps_recurring_checkout_page_id', 'woocommerce_prices_include_tax', 'woocommerce_vipps_recurring_settings', 'woo-vipps-recurring-version', 'active_sitewide_plugins', '_vipps_recurring_token');
DELETE FROM wp_options WHERE option_name LIKE 'cancel_subscription_lock%';
DELETE FROM wp_options WHERE option_name LIKE 'maybe_cancel_due_charge_lock%';

