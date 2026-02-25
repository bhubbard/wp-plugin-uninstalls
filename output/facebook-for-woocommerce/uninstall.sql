-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_facebook_background_handle_virtual_products_variations_complete', 'wc_facebook_background_remove_duplicate_visibility_meta_complete', 'wc_facebook_whatsapp_consent_collection_setting_status', 'woocommerce_cart_redirect_after_add', 'wc_facebook_feed_migrated', 'fb_test_pass', 'facebook_for_woocommerce_flush_rewrite_rules', 'facebook_for_woocommerce_rewrite_version', 'wc_facebook_svr_flags', 'wc_facebook_has_connected_fbe_2', 'wc_facebook_has_authorized_pages_read_engagement', 'wc_facebook_enable_messenger', 'wc_facebook_wa_integration_config_id', 'wc_facebook_last_attribute_sync', 'wc_facebook_merchant_access_token', 'wc_facebook_background_handle_virtual_products_variations_skipped', 'wc_facebook_excluded_product_category_ids', 'wc_facebook_excluded_product_tag_ids', 'elementor_pro_theme_builder_conditions', 'wc_facebook_language_feed_ids', 'active_sitewide_plugins', 'woocommerce_feature_cost_of_goods_sold_enabled', 'fb_wmpl_language_visibility', 'woocommerce_facebookcommerce_settings', 'wc_facebook_page_access_token', 'woocommerce_facebookcommerce_legacy_settings', 'fb_disable_sync_on_dev_environment', 'woocommerce_fb_autosync_time', 'fb_cart_url', 'wc_facebook_google_product_categories', 'wc_facebook_custom_attribute_mappings', 'woocommerce_hide_out_of_stock_items', 'woocommerce_tax_display_shop', 'wc_facebook_enable_product_sync', 'wc_facebook_product_attribute_mappings', 'facebook_plugin_unmapped_attributes_info', 'facebook_plugin_api_success', 'facebook_plugin_api_info', 'facebook_plugin_api_sticky', 'facebook_plugin_resync_sticky', 'facebook_plugin_api_error', 'facebook_plugin_api_warning', 'facebook_plugin_test_fail', 'facebook_plugin_test_stack_trace', 'wc_facebook_svr_flags_last_update', 'wc_facebook_connection_invalid', 'fb_product_set_banner_dismissed', 'fb_new_unmapped_attribute_banner', 'fb_show_banner_now', 'facebook_for_woocommerce_attribute_notices');
DELETE FROM wp_options WHERE option_name IN ('wc_facebook_connection_failed', 'global_logging_message_queue', 'sv_wc_plugin_wc_versions', 'wc_facebook_sync_in_progress', 'upcoming_woo_all_products_banner_hide', 'plugin_updated_banner_hide', 'plugin_updated_with_master_sync_off_banner_hide', 'wc_facebook_google_product_categories', 'wc_facebook_background_product_sync_queue_empty', 'wc_facebook_background_product_sync_sync_in_progress', 'compat_checker_wc_versions');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_last_change_time', '_wc_facebook_enhanced_catalog_attributes_brand', '_wc_facebook_enhanced_catalog_attributes_age_group', '_wc_facebook_enhanced_catalog_attributes_gender', '_wc_facebook_enhanced_catalog_attributes_size', '_wc_facebook_enhanced_catalog_attributes_color', '_wc_facebook_enhanced_catalog_attributes_material', '_wc_facebook_enhanced_catalog_attributes_pattern', 'rating', 'fb_product_set_id', '_wc_facebook_product_cats', 'thumbnail_id', '_wc_facebook_sale_price', '_wc_facebook_inventory', '_wc_facebook_tax', '_wc_facebook_additional_image_link', 'fb_brand', 'fb_color', 'fb_material', 'fb_size', 'fb_pattern', 'fb_age_group', 'fb_gender', 'fb_product_condition', 'fb_mpn', 'fb_gtin', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_last_change_time', '_wc_facebook_enhanced_catalog_attributes_brand', '_wc_facebook_enhanced_catalog_attributes_age_group', '_wc_facebook_enhanced_catalog_attributes_gender', '_wc_facebook_enhanced_catalog_attributes_size', '_wc_facebook_enhanced_catalog_attributes_color', '_wc_facebook_enhanced_catalog_attributes_material', '_wc_facebook_enhanced_catalog_attributes_pattern', 'rating', 'fb_product_set_id', '_wc_facebook_product_cats', 'thumbnail_id', '_wc_facebook_sale_price', '_wc_facebook_inventory', '_wc_facebook_tax', '_wc_facebook_additional_image_link', 'fb_brand', 'fb_color', 'fb_material', 'fb_size', 'fb_pattern', 'fb_age_group', 'fb_gender', 'fb_product_condition', 'fb_mpn', 'fb_gtin', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_last_change_time', '_wc_facebook_enhanced_catalog_attributes_brand', '_wc_facebook_enhanced_catalog_attributes_age_group', '_wc_facebook_enhanced_catalog_attributes_gender', '_wc_facebook_enhanced_catalog_attributes_size', '_wc_facebook_enhanced_catalog_attributes_color', '_wc_facebook_enhanced_catalog_attributes_material', '_wc_facebook_enhanced_catalog_attributes_pattern', 'rating', 'fb_product_set_id', '_wc_facebook_product_cats', 'thumbnail_id', '_wc_facebook_sale_price', '_wc_facebook_inventory', '_wc_facebook_tax', '_wc_facebook_additional_image_link', 'fb_brand', 'fb_color', 'fb_material', 'fb_size', 'fb_pattern', 'fb_age_group', 'fb_gender', 'fb_product_condition', 'fb_mpn', 'fb_gtin', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_last_change_time', '_wc_facebook_enhanced_catalog_attributes_brand', '_wc_facebook_enhanced_catalog_attributes_age_group', '_wc_facebook_enhanced_catalog_attributes_gender', '_wc_facebook_enhanced_catalog_attributes_size', '_wc_facebook_enhanced_catalog_attributes_color', '_wc_facebook_enhanced_catalog_attributes_material', '_wc_facebook_enhanced_catalog_attributes_pattern', 'rating', 'fb_product_set_id', '_wc_facebook_product_cats', 'thumbnail_id', '_wc_facebook_sale_price', '_wc_facebook_inventory', '_wc_facebook_tax', '_wc_facebook_additional_image_link', 'fb_brand', 'fb_color', 'fb_material', 'fb_size', 'fb_pattern', 'fb_age_group', 'fb_gender', 'fb_product_condition', 'fb_mpn', 'fb_gtin', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_impressions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_impressions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_impressions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_impressions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_custom_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_custom_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_custom_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_custom_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%brand';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%brand';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%brand';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%brand';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

