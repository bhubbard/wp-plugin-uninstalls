#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'category_indexer_version'
wp option delete 'category_indexer_category_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'category_indexer_option_shop'
wp option delete 'category_indexer_option_shop_canonical'
wp option delete 'category_indexer_option_orderby'
wp option delete 'category_indexer_option_url_parameters'
wp option delete 'category_indexer_option_search'
wp option delete 'category_indexer_option_pagination'
wp option delete 'category_indexer_global_category_defaults'
wp option delete 'category_indexer_per_page'
wp option delete 'category_indexer_redirect_log_db_version'
wp option delete 'woocommerce_permalinks'
wp option delete 'category_indexer_redirect_options'

# Delete Transients
wp transient delete 'category_indexer_categories'
wp transient delete 'category_indexer_options'
wp transient delete 'category_indexer_parents'
wp transient delete 'category_indexer_show_upgrade_notice'
wp transient delete 'ci_cleanup_counter'

