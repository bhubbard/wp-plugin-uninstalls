-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'scd_wcmp_first_install_date', 'scd_license_key', 'scd_license_start_date', 'scd_license_expiry_date', 'scd_license_options', 'scd_currency_options', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display', 'wocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vendor_term_id', 'scd-user-currency', 'user-currency-option', 'scd_other_options', 'dc_pv_shipped', '_meta_regular_price', '_meta_sale_price', '_regular_price', '_sale_price', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vendor_term_id', 'scd-user-currency', 'user-currency-option', 'scd_other_options', 'dc_pv_shipped', '_meta_regular_price', '_meta_sale_price', '_regular_price', '_sale_price', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vendor_term_id', 'scd-user-currency', 'user-currency-option', 'scd_other_options', 'dc_pv_shipped', '_meta_regular_price', '_meta_sale_price', '_regular_price', '_sale_price', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vendor_term_id', 'scd-user-currency', 'user-currency-option', 'scd_other_options', 'dc_pv_shipped', '_meta_regular_price', '_meta_sale_price', '_regular_price', '_sale_price', '_price');

