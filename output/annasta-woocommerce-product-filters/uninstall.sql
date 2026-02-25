-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awf_version', 'awf_cache_reset_mode', 'awf_global_wrapper', 'awf_use_wc_orderby', 'awf_range_slider_style', 'awf_cm_v2', 'awf_redirect_archives', 'awf_color_image_style', 'awf_color_filter_style', 'awf_image_filter_style', 'awf_custom_style', 'awf_remove_wc_orderby', 'awf_display_wc_orderby', 'awf_product_list_template_options', 'awf_display_wc_shop_title', 'awf_remove_wc_shop_title', 'awf_shop_title_badges', 'awf_force_wrapper_reload', 'awf_get_parameters_support', 'awf_ajax_mode', 'awf_force_published_status', 'awf_hide_empty_filters', 'awf_presets', 'awf_product_cat_pretty_name', 'awf_product_tag_pretty_name', 'awf_ppp_default', 'awf_preset_1_display_mode', 'awf_customizer_options', 'awf_theme_support', 'awf_shop_columns', 'awf_ajax_pagination', 'awf_ajax_scroll_on', 'awf_ajax_scroll_adjustment', 'awf_archive_components_support', 'awf_breadcrumbs_support', 'awf_custom_selectors', 'awf_products_html_wrapper', 'awf_pretty_scrollbars', 'awf_fontawesome_font_enqueue', 'awf_excluded_customizer_sections', 'awf_user_css', 'awf_page_title', 'awf_shop_title', 'awf_default_page_title', 'awf_add_canonical', 'awf_add_nofollow', 'awf_add_seo_meta_description', 'awf_seo_meta_description', 'awf_seo_filters_title_prefix', 'awf_seo_filters_separator');
DELETE FROM wp_options WHERE option_name IN ('awf_seo_filter_values_separator', 'awf_rewrite_rules', 'awf_query_vars', 'awf_shortcode_pages', 'awf_default_shop_title', 'awf_seo_filters_settings', 'awf_toggle_btn_label', 'awf_popup_close_btn_label', 'awf_toggle_btn_position_before', 'awf_dynamic_price_ranges', 'awf_ss_engine', 'awf_include_parents_in_associations', 'awf_include_children_on', 'awf_variations_stock_support', 'awf_hierarchical_archive_permalinks', 'awf_force_products_display_on', 'awf_user_js', 'awf_counts_cache_days', 'awf_style_options_file', 'awf_default_font', 'awf_popup_fix_close_btn', 'awf_enable_cron_cache_reset', 'woocommerce_default_catalog_orderby', 'woocommerce_hide_out_of_stock_items', 'awf_ppp_limit', 'woocommerce_tax_display_shop', '_wcml_settings', 'woocommerce_attribute_lookup_enabled', 'awf_display_categories_on_sc_pages', 'awf_multilingual_support', 'awf_daterangepicker_enabled', 'awf_default_font_enqueue', 'awf_badge_reset_label', 'awf_compatibility_support', 'awf_preset_1_name', 'awf_preset_1_type', 'awf_preset_1_togglable_mode', 'awf_archive_identifier_pretty_name', 'awf_seo_filters_title_postfix', 'awf_cache_reset_counts_rebuild', 'awf_pwb-brand_pretty_name', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'awf_rewrite_rules_changed', 'awf_flush_rewrite_rules', 'awf_vss_variable_term_id');
DELETE FROM wp_options WHERE option_name IN ('awf_counts_cleanup', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_ajax_on';
DELETE FROM wp_options WHERE option_name LIKE '%_button_on';
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%name';
DELETE FROM wp_options WHERE option_name LIKE '%module';
DELETE FROM wp_options WHERE option_name LIKE '%_display_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_name';
DELETE FROM wp_options WHERE option_name LIKE '%_responsive_width';
DELETE FROM wp_options WHERE option_name LIKE '%_query_operator';
DELETE FROM wp_options WHERE option_name LIKE '%_title';
DELETE FROM wp_options WHERE option_name LIKE '%_description';
DELETE FROM wp_options WHERE option_name LIKE '%_show_title_badges';
DELETE FROM wp_options WHERE option_name LIKE '%_reset_btn';
DELETE FROM wp_options WHERE option_name LIKE '%_reset_btn_label';
DELETE FROM wp_options WHERE option_name LIKE '%_filter_btn_label';
DELETE FROM wp_options WHERE option_name LIKE '%_sbs_type';
DELETE FROM wp_options WHERE option_name LIKE '%_sbs_submission';
DELETE FROM wp_options WHERE option_name LIKE '%_sbs_next_btn';
DELETE FROM wp_options WHERE option_name LIKE '%_sbs_back_btn';
DELETE FROM wp_options WHERE option_name LIKE '%_sbs_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_layout';
DELETE FROM wp_options WHERE option_name LIKE '%_togglable_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_pretty_name';
DELETE FROM wp_options WHERE option_name LIKE '%_awf_module_pretty_name';
DELETE FROM wp_options WHERE option_name LIKE '%_awf_meta_pretty_name';
DELETE FROM wp_options WHERE option_name LIKE 'awf_vss_products_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'awf_vss_variations_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'timeout_%';

