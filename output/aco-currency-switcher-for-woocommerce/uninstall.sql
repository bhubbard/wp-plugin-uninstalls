-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'acowcs_settings', 'active_sitewide_plugins', 'woocommerce_price_num_decimals', 'woocommerce_shop_page_id', '_test');
DELETE FROM wp_options WHERE option_name LIKE '%_ccod';
DELETE FROM wp_options WHERE option_name LIKE '%_acowcs_currency';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fixed_currency_price', 'fixed_userrole_price', 'coupon_amount', '_sale_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('fixed_currency_price', 'fixed_userrole_price', 'coupon_amount', '_sale_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('fixed_currency_price', 'fixed_userrole_price', 'coupon_amount', '_sale_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fixed_currency_price', 'fixed_userrole_price', 'coupon_amount', '_sale_price', '_regular_price');

