-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('category_indexer_version', 'category_indexer_category_options', 'category_indexer_option_shop', 'category_indexer_option_shop_canonical', 'category_indexer_option_orderby', 'category_indexer_option_url_parameters', 'category_indexer_option_search', 'category_indexer_option_pagination', 'category_indexer_global_category_defaults', 'category_indexer_per_page', 'category_indexer_redirect_log_db_version', 'woocommerce_permalinks', 'category_indexer_redirect_options', 'category_indexer_categories', 'category_indexer_options', 'category_indexer_parents', 'category_indexer_show_upgrade_notice', 'ci_cleanup_counter');
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

