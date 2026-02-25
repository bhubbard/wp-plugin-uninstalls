-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_search_result_grid_container_class', 'wc_predictive_search_just_confirm', 'woocommerce_search_exclude_products', 'woocommerce_search_exclude_posts', 'woocommerce_search_exclude_pages', 'woocommerce_search_schedule_time_sync_data', 'wc_predictive_search_had_sync_posts_data', 'wc_predictive_search_synced_posts_data', 'wc_predictive_search_auto_synced_completed_time', 'wc_predictive_search_manual_synced_completed_time', 'wc_predictive_search_auto_synced_products_successed', 'wc_predictive_search_auto_synced_posts_successed', 'wc_predictive_search_auto_synced_pages_successed', 'woocommerce_search_box_text', 'wc_predictive_search_lite_version', 'wc_predictive_search_just_installed', 'wc_ps_upgraded_to_new_sync_data', 'woocommerce_search_result_items', 'woocommerce_search_is_debug', 'woocommerce_search_result_display_type', 'predictive_search_mode', 'woocommerce_search_remove_special_character', 'woocommerce_search_special_characters', 'woocommerce_search_replace_special_character', 'woocommerce_search_allow_auto_sync_data', 'wc_predictive_search_auto_synced_full_data_successed', 'wc_predictive_search_auto_synced_posts_table_successed', 'wc_predictive_search_auto_synced_skus_successed', 'woocommerce_search_schedule_success_recipients', 'woocommerce_search_schedule_error_recipients', 'wc_predictive_search_auto_synced_product_categories_successed', 'wc_predictive_search_auto_synced_product_tags_successed', 'wc_predictive_search_auto_synced_relationships_successed', 'wc_predictive_search_sidebar_template_settings', 'wc_predictive_search_header_template_settings', 'woocommerce_search_exclude_out_stock', 'woocommerce_search_sku_enable', 'woocommerce_search_price_enable', 'woocommerce_search_addtocart_enable', 'woocommerce_search_categories_enable', 'woocommerce_search_tags_enable', 'woocommerce_search_text_lenght', 'woocommerce_db_version', 'woocommerce_search_cache_timeout', 'woocommerce_search_page_id', 'woocommerce_search_exclude_p_categories', 'woocommerce_search_exclude_p_tags', 'woocommerce_search_focus_enable', 'woocommerce_search_focus_plugin', 'woocommerce_search_product_items');
DELETE FROM wp_options WHERE option_name IN ('woocommerce_search_p_sku_items', 'woocommerce_search_p_cat_items', 'woocommerce_search_p_tag_items', 'woocommerce_search_post_items', 'woocommerce_search_page_items', 'woocommerce_search_character_max', 'woocommerce_search_width', 'woocommerce_search_padding_top', 'woocommerce_search_padding_bottom', 'woocommerce_search_padding_left', 'woocommerce_search_padding_right', 'woocommerce_search_custom_style', 'woocommerce_search_global_search', 'woocommerce_search_enable_google_analytic', 'woocommerce_search_google_analytic_id', 'woocommerce_search_google_analytic_query_parameter', 'wc_predictive_search_synched_data', 'update_plugins', 'wc_predictive_search_starting_manual_sync');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

