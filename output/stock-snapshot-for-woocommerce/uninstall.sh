#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_stock_snapshot_action_scheduler'
wp option delete 'alg_wc_stock_snapshot_action_scheduler_interval'
wp option delete 'alg_wc_stock_snapshot_tools_take_snapshot'
wp option delete 'alg_wc_stock_snapshot_tools_delete_snapshots'
wp option delete 'alg_wc_stock_snapshot_clear_transients'
wp option delete 'alg_wc_stock_snapshot_url'
wp option delete 'alg_wc_stock_snapshot_product_update'
wp option delete 'alg_wc_stock_snapshot_include_variations'
wp option delete 'alg_wc_stock_snapshot_count_children'
wp option delete 'alg_wc_stock_snapshot_extra_data'
wp option delete 'alg_wc_stock_snapshot_version'
wp option delete 'alg_wc_stock_snapshot_history_date_points'
wp option delete 'alg_wc_stock_snapshot_history_product_cats'
wp option delete 'alg_wc_stock_snapshot_report_do_in_background'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'alg_wc_stock_snapshot_report_data'
wp transient delete 'alg_wc_stock_snapshot_restocked'
wp transient delete 'alg_wc_stock_snapshot_history'
wp transient delete 'alg_wc_stock_snapshot_report'

# Clear Cron Jobs
wp cron event delete 'alg_wc_stock_snapshot'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_stock_snapshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_stock_snapshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_stock_snapshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_stock_snapshot'"
