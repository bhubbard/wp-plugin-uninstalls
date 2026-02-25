-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prowc_ppbf_dashboard_widget_enabled', 'prowc_ppbf_products_list_columns', 'prowc_ppbf_total_params', 'woocommerce_version', 'prowc_ppbf_enabled', 'prowc_ppbf_filters_priority', 'prowc_ppbf_enable_plugin_urls', 'prowc_ppbf_rounding_enabled', 'prowc_ppbf_rounding_precision', 'woocommerce_price_num_decimals', 'prowc_ppbf_eval', 'prowc_ppbf_disable_for_empty_price', 'prowc_ppbf_check_for_product_changes_price', 'prowc_ppbf_disable_for_products', 'prowc_ppbf_disable_for_product_cats', 'prowc_ppbf_shortcodes_prefix', 'woocommerce_default_country', 'prowc_ppbf_version', 'prowc_ppbf_activation_time', 'prowc_ppbf_plugin_notice_nopemaybelater', 'prowc_ppbf_plugin_notice_remindlater', 'prowc_ppbf_plugin_reviewtrack', 'prowc_ppbf_plugin_notice_dismissed', 'prowc_ppbf_notice_remindlater_rating', 'prowc_ppbf_notice_dismissed_rating', 'prowc_ppbf_plugin_notice_alreadydid');
DELETE FROM wp_options WHERE option_name LIKE 'prowc_ppbf_param_note_%';
DELETE FROM wp_options WHERE option_name LIKE 'prowc_ppbf_param_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

