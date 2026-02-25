-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foxyshop_settings', 'foxyshop_setup_required', 'foxyshop_category_sort', 'foxyshop_saved_variations', 'foxyshop_rewrite_rules', 'foxyshop_downloadables', 'rewrite_rules', 'foxyshop_categories_children', 'widget_foxyshop-cart-link-widget', 'widget_foxyshop-category-list-widget', 'widget_foxyshop-category-widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_foxyshop_hide_image', '_variations', '_inventory_levels', 'foxyshop_subscription', '_weight', '_code', '_salestartdate', '_saleenddate', '_price', '_saleprice', '_category', '_quantity_min', '_quantity_max', '_quantity_hide', '_hide_product', '_require_sso', '_coupon', '_expires', '_cart', '_empty', '_sub_frequency', '_sub_startdate', '_sub_enddate', '_discount_type', '_related_products', '_bundled_products', '_addon_products', '_related_order', '_addon_order', 'foxycart_customer_id', '_availability', '_condition', '_gtin', '_mpn', '_google_product_listed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_foxyshop_hide_image', '_variations', '_inventory_levels', 'foxyshop_subscription', '_weight', '_code', '_salestartdate', '_saleenddate', '_price', '_saleprice', '_category', '_quantity_min', '_quantity_max', '_quantity_hide', '_hide_product', '_require_sso', '_coupon', '_expires', '_cart', '_empty', '_sub_frequency', '_sub_startdate', '_sub_enddate', '_discount_type', '_related_products', '_bundled_products', '_addon_products', '_related_order', '_addon_order', 'foxycart_customer_id', '_availability', '_condition', '_gtin', '_mpn', '_google_product_listed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_foxyshop_hide_image', '_variations', '_inventory_levels', 'foxyshop_subscription', '_weight', '_code', '_salestartdate', '_saleenddate', '_price', '_saleprice', '_category', '_quantity_min', '_quantity_max', '_quantity_hide', '_hide_product', '_require_sso', '_coupon', '_expires', '_cart', '_empty', '_sub_frequency', '_sub_startdate', '_sub_enddate', '_discount_type', '_related_products', '_bundled_products', '_addon_products', '_related_order', '_addon_order', 'foxycart_customer_id', '_availability', '_condition', '_gtin', '_mpn', '_google_product_listed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_foxyshop_hide_image', '_variations', '_inventory_levels', 'foxyshop_subscription', '_weight', '_code', '_salestartdate', '_saleenddate', '_price', '_saleprice', '_category', '_quantity_min', '_quantity_max', '_quantity_hide', '_hide_product', '_require_sso', '_coupon', '_expires', '_cart', '_empty', '_sub_frequency', '_sub_startdate', '_sub_enddate', '_discount_type', '_related_products', '_bundled_products', '_addon_products', '_related_order', '_addon_order', 'foxycart_customer_id', '_availability', '_condition', '_gtin', '_mpn', '_google_product_listed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_variation_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_variation_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_variation_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_variation_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_variation_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_variation_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_variation_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_variation_type_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_variation_value_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_variation_value_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_variation_value_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_variation_value_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_variation_dkey_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_variation_dkey_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_variation_dkey_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_variation_dkey_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_variation_required_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_variation_required_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_variation_required_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_variation_required_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_foxyshop_menu_order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_foxyshop_menu_order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_foxyshop_menu_order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_foxyshop_menu_order_%';

