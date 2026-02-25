-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lr_count_down_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupon_amount', 'expiry_date', 'free_shipping', '_lr_checkbox', '_lr_sale_price_from', '_lr_sale_price_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupon_amount', 'expiry_date', 'free_shipping', '_lr_checkbox', '_lr_sale_price_from', '_lr_sale_price_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupon_amount', 'expiry_date', 'free_shipping', '_lr_checkbox', '_lr_sale_price_from', '_lr_sale_price_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupon_amount', 'expiry_date', 'free_shipping', '_lr_checkbox', '_lr_sale_price_from', '_lr_sale_price_to');

