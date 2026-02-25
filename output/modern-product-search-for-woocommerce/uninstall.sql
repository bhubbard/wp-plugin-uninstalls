-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpsfw_install_date', 'mpsfw_review_dismissed_time', 'mpsfw_settings', 'mpsfw_plugin_ver', 'mpsfw_index_table_version', 'mpsfw_reindex_version', 'qtranslate_enabled_languages', 'active_sitewide_plugins', 'mpsfw_search_query_args', 'sep_exclude', 'mpsfw_index_processed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bm_conditional_all_products', 'bm_conditional_products', 'bm_conditional_categories', '_dfrps_product', '_alg_wc_pvbur_visible', '_alg_wc_pvbur_invisible', 'dfw_enable_deal');
DELETE FROM wp_usermeta WHERE meta_key IN ('bm_conditional_all_products', 'bm_conditional_products', 'bm_conditional_categories', '_dfrps_product', '_alg_wc_pvbur_visible', '_alg_wc_pvbur_invisible', 'dfw_enable_deal');
DELETE FROM wp_termmeta WHERE meta_key IN ('bm_conditional_all_products', 'bm_conditional_products', 'bm_conditional_categories', '_dfrps_product', '_alg_wc_pvbur_visible', '_alg_wc_pvbur_invisible', 'dfw_enable_deal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bm_conditional_all_products', 'bm_conditional_products', 'bm_conditional_categories', '_dfrps_product', '_alg_wc_pvbur_visible', '_alg_wc_pvbur_invisible', 'dfw_enable_deal');

