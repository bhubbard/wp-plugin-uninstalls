-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_related_products_crp_exclude_widget_category', 'custom_related_products_crp_exclude_widget_product', 'custom_related_products_crp_banner_width', 'custom_related_products_cart_working_mode', 'wbfte_promotion_banner_version', 'wt_hide_invoice_cta_banner', 'wt_hide_smart_coupon_cta_banner', 'wt_hide_product_ie_cta_banner', 'active_sitewide_plugins', 'crp_version', 'woocommerce_version', 'custom_related_products_working_mode', 'custom_related_products_disable', 'custom_related_products_disable_custom', 'custom_related_products_crp_banner_product_width', 'custom_related_products_slider', 'custom_related_products_overide_theme_rp', 'custom_related_products_slider_temp', 'custom_related_products_crp_custom_slider_arrow', 'woocommerce_placeholder_image', 'custom_related_products_crp_related_by', 'custom_related_products_crp_number', 'custom_related_products_use_primary_id_wpml', 'custom_related_products_exclude_os', 'custom_related_products_rp_exclude_backorder', 'custom_related_products_crp_order_by', 'custom_related_products_crp_order', 'custom_related_products_crp_title', 'custom_related_products_slider_type', '_crp_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_working_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_cart_working_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_disable';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_custom';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_title';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_related_by';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_exclude_widget_category';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_exclude_widget_product';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_order_by';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_order';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_number';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_banner_width';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_custom_slider_arrow';
DELETE FROM wp_options WHERE option_name LIKE '%_crp_banner_product_width';
DELETE FROM wp_options WHERE option_name LIKE '%_exclude_os';
DELETE FROM wp_options WHERE option_name LIKE '%_rp_exclude_backorder';
DELETE FROM wp_options WHERE option_name LIKE '%_slider';
DELETE FROM wp_options WHERE option_name LIKE '%_use_primary_id_wpml';
DELETE FROM wp_options WHERE option_name LIKE '%_overide_theme_rp';
DELETE FROM wp_options WHERE option_name LIKE '%_slider_type';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_crp_related_product_cats', '_crp_related_product_tags', '_crp_related_product_attr', '_crp_related_ids', '_crp_excluded_cats', 'selected_ids', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_crp_related_product_cats', '_crp_related_product_tags', '_crp_related_product_attr', '_crp_related_ids', '_crp_excluded_cats', 'selected_ids', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_crp_related_product_cats', '_crp_related_product_tags', '_crp_related_product_attr', '_crp_related_ids', '_crp_excluded_cats', 'selected_ids', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_crp_related_product_cats', '_crp_related_product_tags', '_crp_related_product_attr', '_crp_related_ids', '_crp_excluded_cats', 'selected_ids', '_stock_status');

