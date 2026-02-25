-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('IS_Z4Money_URL', 'active_sitewide_plugins', 'woocommerce_wc_z4money_creditcard_settings', 'woocommerce_wc_z4money_boleto_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_z4money_boleto', '_wc_z4money_card');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_z4money_boleto', '_wc_z4money_card');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_z4money_boleto', '_wc_z4money_card');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_z4money_boleto', '_wc_z4money_card');

