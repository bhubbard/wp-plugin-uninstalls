-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woof_version', 'woof_alert', 'woof_settings', 'woocommerce_tax_display_shop', 'woof_show_count', 'woof_notices', 'woof_show_count_dynamic', 'woof_hide_dynamic_empty_pos', 'woof_first_init', 'woof_show_author_search', 'woof_front_builder_demo', 'woof_checkboxes_slide', 'woocommerce_currency_pos', 'woof_stat_updated_table', 'woof_stat_start_data', 'woof_reset_btn_txt', 'woof_cron_limit_do', 'woof_try_ajax', 'woof_show_count_dynamic_turbo_mode', 'woof_show_count_turbo_mode', 'woof_hide_dynamic_empty_pos_turbo_mode', 'woof_set_automatically', 'woof_autosubmit', 'woof_hide_red_top_panel', 'woof_sort_terms_checked', 'woof_filter_btn_txt', 'woocommerce_currency', 'woocommerce_shop_page_id', 'woocommerce_default_catalog_orderby', 'woocommerce_hide_out_of_stock_items', 'wppp_default_ppp', 'woof_manage_rate_alert', 'woof_min_max_prices', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woof_user_messenger', 'woof_user_search_query');
DELETE FROM wp_usermeta WHERE meta_key IN ('woof_user_messenger', 'woof_user_search_query');
DELETE FROM wp_termmeta WHERE meta_key IN ('woof_user_messenger', 'woof_user_search_query');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woof_user_messenger', 'woof_user_search_query');

