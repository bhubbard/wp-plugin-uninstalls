-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgwt_wcas_version', 'dgwt_wcas_settings_version', 'dgwt_wcas_settings_version_pro', 'dgwt_wcas_activation_date', 'dgwt_wcas_db_json_support', 'dgwt_wcas_db_locking_support', 'dgwt_wcas_dismiss_elementor_template', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'woof_try_ajax', 'woocommerce_placeholder_image', 'woocommerce_manage_stock', 'discontinued_show_in_catalog', 'alg_wc_ean_frontend_search', 'wpm_pgw_search_by_code', 'woocommerce_hide_out_of_stock_items', 'dgwt_wcas_settings_show_advanced', 'astra-settings', 'generate_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'dgwt_wcas_searchable_custom_fields', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_dgwt_wcas_layout', '_menu_item_dgwt_wcas_search_icon_color', 'pwb_brand_image', 'brand_image_url', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_dgwt_wcas_layout', '_menu_item_dgwt_wcas_search_icon_color', 'pwb_brand_image', 'brand_image_url', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_dgwt_wcas_layout', '_menu_item_dgwt_wcas_search_icon_color', 'pwb_brand_image', 'brand_image_url', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_dgwt_wcas_layout', '_menu_item_dgwt_wcas_search_icon_color', 'pwb_brand_image', 'brand_image_url', 'thumbnail_id');

