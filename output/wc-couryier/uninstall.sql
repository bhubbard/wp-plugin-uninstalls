-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tes_user', 'couryier_account_no', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'currency_rates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awb_tracking_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('awb_tracking_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('awb_tracking_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awb_tracking_no');

