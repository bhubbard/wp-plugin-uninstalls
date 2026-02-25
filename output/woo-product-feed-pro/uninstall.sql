-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adt_pfp_activation_code_triggered', 'adt_add_facebook_pixel', 'add_facebook_capi', 'adt_facebook_pixel_id', 'adt_facebook_capi_token', 'adt_facebook_pixel_content_ids', 'adt_add_remarketing', 'adt_adwords_conversion_id', 'adt_last_order_id', 'adt_product_changes', 'woosea_allow_update', 'litespeed.conf.cdn-exc', 'WpFastestCacheExclude', 'ossdl_off_exclude', 'breeze_cdn_integration', 'wpo_cache_config', 'cache_enabler', 'swift_performance_options', 'comet_cache_options', 'hyper-cache', 'channel_attributes', 'woocommerce_prices_include_tax', 'adt_use_parent_variable_product_image', 'skroutz_apparel', 'skroutz_clr', 'skroutz_sz', 'attributes_dropdown', 'woosea_gs_analysis_results', 'woosea_first_activation', 'woosea_count_activation', 'woosea_getelite_notification', 'woosea_license_notification_closed', 'adt_use_legacy_filters_and_rules', 'adt_disable_http_feed_generation', 'adt_enable_batch', 'woosea_review_interaction', 'adt_notification_meta', 'adt_enable_logging', 'adt_show_only_basis_attributes', 'adt_add_all_shipping', 'adt_remove_other_shipping_classes_on_free_shipping', 'adt_remove_free_shipping', 'adt_remove_local_pickup_shipping', 'woocommerce_feature_custom_order_tables_enabled', 'active_sitewide_plugins', 'adt_cron_projects', 'pfp_installed_by', 'adt_batch_size', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_based_on');
DELETE FROM wp_options WHERE option_name IN ('woosea_cat_mapping', 'plugin_settings', 'adt_clean_up_plugin_data', 'last_order_id', 'product_changes', 'cron_projects', 'add_mother_image', 'add_all_shipping', 'free_shipping', 'remove_free_shipping', 'remove_local_pickup', 'local_pickup_shipping', 'show_only_basis_attributes', 'enable_logging', 'add_facebook_pixel', 'facebook_pixel_id', 'add_facebook_pixel_content_ids', 'add_remarketing', 'adwords_conversion_id', 'add_batch', 'batch_size', 'adt_transient_custom_attributes');
DELETE FROM wp_options WHERE option_name LIKE '%_marketing_page_closed';
DELETE FROM wp_options WHERE option_name LIKE 'batch_project_%';
DELETE FROM wp_options WHERE option_name LIKE 'adt_variation_sales_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', '_woosea_installment_months', '_woosea_installment_amount', 'rank_math_primary_product_cat', '_stock_status', '_price', '_sku', '_product_attributes', 'wpseo_variation_global_identifiers_values', '_woosea_exclude_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', '_woosea_installment_months', '_woosea_installment_amount', 'rank_math_primary_product_cat', '_stock_status', '_price', '_sku', '_product_attributes', 'wpseo_variation_global_identifiers_values', '_woosea_exclude_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', '_woosea_installment_months', '_woosea_installment_amount', 'rank_math_primary_product_cat', '_stock_status', '_price', '_sku', '_product_attributes', 'wpseo_variation_global_identifiers_values', '_woosea_exclude_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', '_woosea_installment_months', '_woosea_installment_amount', 'rank_math_primary_product_cat', '_stock_status', '_price', '_sku', '_product_attributes', 'wpseo_variation_global_identifiers_values', '_woosea_exclude_product');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

