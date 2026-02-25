-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_view_order_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_enable_ajax_add_to_cart', 'wooready_products_archive_shop_grid_style', 'woo_ready_product_attributes', 'ShopReady_lic_Key', 'QSBundle_lic_Key', 'shop_ready_pro_cart_page_layout', 'wr_login_redirect_enable', 'shop_ready_components', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_permalinks', 'wready_product_tab_data_keys', 'elementor_cpt_support', 'shop_ready_theme_template_override_enable', 'woocommerce_enable_myaccount_registration', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'shop_ready_qs_version', 'shop_ready_demo_attachment_ids', 'shop_ready_templates', 'shop_ready_simple_product_id', 'shop_ready_modules', 'shop_ready_data_api', 'shop_ready_remote_notice_time_elaps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_ready_menu_item_badge', '_woo_ready_menu_item_badge_color', '_woo_ready_menu_item_badge_bgcolor', '_saleflash_text', 'shop_ready_videos_gal_list', 'woo_ready_elementor_tpl_id', 'woo_ready_elementor_menu_bedge', 'woo_ready_elementor_menu_bedge_color', 'woo_ready_elementor_menu_bedge_bgcolor', '_wp_page_template', 'shop_ready_demo_content', 'shop_ready_page_tpl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_ready_menu_item_badge', '_woo_ready_menu_item_badge_color', '_woo_ready_menu_item_badge_bgcolor', '_saleflash_text', 'shop_ready_videos_gal_list', 'woo_ready_elementor_tpl_id', 'woo_ready_elementor_menu_bedge', 'woo_ready_elementor_menu_bedge_color', 'woo_ready_elementor_menu_bedge_bgcolor', '_wp_page_template', 'shop_ready_demo_content', 'shop_ready_page_tpl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_ready_menu_item_badge', '_woo_ready_menu_item_badge_color', '_woo_ready_menu_item_badge_bgcolor', '_saleflash_text', 'shop_ready_videos_gal_list', 'woo_ready_elementor_tpl_id', 'woo_ready_elementor_menu_bedge', 'woo_ready_elementor_menu_bedge_color', 'woo_ready_elementor_menu_bedge_bgcolor', '_wp_page_template', 'shop_ready_demo_content', 'shop_ready_page_tpl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_ready_menu_item_badge', '_woo_ready_menu_item_badge_color', '_woo_ready_menu_item_badge_bgcolor', '_saleflash_text', 'shop_ready_videos_gal_list', 'woo_ready_elementor_tpl_id', 'woo_ready_elementor_menu_bedge', 'woo_ready_elementor_menu_bedge_color', 'woo_ready_elementor_menu_bedge_bgcolor', '_wp_page_template', 'shop_ready_demo_content', 'shop_ready_page_tpl');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_page_tpl';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_page_tpl';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_page_tpl';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_page_tpl';

