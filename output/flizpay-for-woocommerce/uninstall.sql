-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flizpay_rewrite_rules_flushed', 'woocommerce_flizpay_settings', 'flizpay_cashback_transient', 'flizpay_transient');

