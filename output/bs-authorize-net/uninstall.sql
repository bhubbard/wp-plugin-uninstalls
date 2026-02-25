-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_anet_temp_token', 'wc_anet_temp_id', 'wc_anet_pm_payerid', '_wc_anet_pm');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_anet_temp_token', 'wc_anet_temp_id', 'wc_anet_pm_payerid', '_wc_anet_pm');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_anet_temp_token', 'wc_anet_temp_id', 'wc_anet_pm_payerid', '_wc_anet_pm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_anet_temp_token', 'wc_anet_temp_id', 'wc_anet_pm_payerid', '_wc_anet_pm');

