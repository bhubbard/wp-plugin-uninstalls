-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbcf_settings', 'woocommerce_subscriptions_enable_early_renewal', 'asaas_status_data');

