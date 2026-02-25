-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kom_settings', 'woocommerce_kco_settings', 'woocommerce_klarna_payments_settings', 'woocommerce_tax_based_on', 'kp_unavailable_feature_ids');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

