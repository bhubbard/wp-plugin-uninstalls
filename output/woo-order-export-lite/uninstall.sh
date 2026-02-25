#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-V1'"
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%download_filename' OR option_name LIKE '_site_transient_%download_filename'"

# Clear Cron Jobs
wp cron event delete 'wc_export_cron_global'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woe_order_exported%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woe_order_exported%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woe_order_exported%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woe_order_exported%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
