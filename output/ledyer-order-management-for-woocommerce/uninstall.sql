-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_lco_settings', 'woocommerce_ledyer_payments_settings', 'lom_settings', 'ledyer_token');

