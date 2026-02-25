-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wc-pickit-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_pickit_fiscal_id', '_shipping_pickit_fiscal_id', '_shipping_wc_lat', '_shipping_wc_lng', '_billing_wc_lat', '_billing_wc_lng');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_pickit_fiscal_id', '_shipping_pickit_fiscal_id', '_shipping_wc_lat', '_shipping_wc_lng', '_billing_wc_lat', '_billing_wc_lng');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_pickit_fiscal_id', '_shipping_pickit_fiscal_id', '_shipping_wc_lat', '_shipping_wc_lng', '_billing_wc_lat', '_billing_wc_lng');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_pickit_fiscal_id', '_shipping_pickit_fiscal_id', '_shipping_wc_lat', '_shipping_wc_lng', '_billing_wc_lat', '_billing_wc_lng');

