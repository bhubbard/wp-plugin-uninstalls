-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'woocommerce_catalog_columns', 'wc_pwb_admin_tab_brands_in_loop', 'wc_pwb_admin_tab_brands_in_loop_separator', 'wc_pwb_admin_tab_slug', 'old_wc_pwb_admin_tab_slug', 'wc_pwb_admin_tab_brand_logo_size', 'wc_pwb_admin_tab_brand_single_position', 'wc_pwb_notice_plugin_review', 'wc_pwb_admin_tab_brand_desc', 'wc_pwb_admin_tab_brand_single_product_tab', 'wc_pwb_admin_tab_brands_in_single', 'wc_pwb_admin_tab_brand_single_label', 'wc_pwb_admin_tab_long_brand_desc', 'wc_pwb_admin_tab_brand_banner', 'wc_pwb_admin_tab_brands_page_id', 'woocommerce_hide_out_of_stock_items', 'pwb_activate_on', 'wc_pwb_admin_tab_section_title', 'wc_pwb_admin_tab_section_end', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%';
DELETE FROM wp_options WHERE option_name LIKE 'pwb_az_listing_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pwb_brand_image', 'pwb_brand_banner', 'pwb_brand_banner_link', 'pwb_long_brand_desc', '_pwb_coupon_restriction', '_pwb_coupon_exclude_brands', 'pwb_featured_brand', 'pwb_brand_banner_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('pwb_brand_image', 'pwb_brand_banner', 'pwb_brand_banner_link', 'pwb_long_brand_desc', '_pwb_coupon_restriction', '_pwb_coupon_exclude_brands', 'pwb_featured_brand', 'pwb_brand_banner_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('pwb_brand_image', 'pwb_brand_banner', 'pwb_brand_banner_link', 'pwb_long_brand_desc', '_pwb_coupon_restriction', '_pwb_coupon_exclude_brands', 'pwb_featured_brand', 'pwb_brand_banner_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pwb_brand_image', 'pwb_brand_banner', 'pwb_brand_banner_link', 'pwb_long_brand_desc', '_pwb_coupon_restriction', '_pwb_coupon_exclude_brands', 'pwb_featured_brand', 'pwb_brand_banner_description');

