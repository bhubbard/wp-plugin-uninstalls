-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pim_settings', '_pim_integration_oauth_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pim_wc_product_option_select');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pim_wc_product_option_select');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pim_wc_product_option_select');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pim_wc_product_option_select');

