-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('waruk_shipping_max_free', 'waruk_shipping_cost', 'waruk_shipping_time', 'waruk_hide_default', 'waruk_webapikey', 'waruk_comments');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arukereso_hide', 'arukereso_show', 'waruk_prod_name', 'manufacturer', 'product_number', 'ean_code', 'warranty', 'shipping_cost', 'shipping_time', 'woo_prod_category', 'waruk_category', 'waruk_category_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('arukereso_hide', 'arukereso_show', 'waruk_prod_name', 'manufacturer', 'product_number', 'ean_code', 'warranty', 'shipping_cost', 'shipping_time', 'woo_prod_category', 'waruk_category', 'waruk_category_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('arukereso_hide', 'arukereso_show', 'waruk_prod_name', 'manufacturer', 'product_number', 'ean_code', 'warranty', 'shipping_cost', 'shipping_time', 'woo_prod_category', 'waruk_category', 'waruk_category_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arukereso_hide', 'arukereso_show', 'waruk_prod_name', 'manufacturer', 'product_number', 'ean_code', 'warranty', 'shipping_cost', 'shipping_time', 'woo_prod_category', 'waruk_category', 'waruk_category_hide');

