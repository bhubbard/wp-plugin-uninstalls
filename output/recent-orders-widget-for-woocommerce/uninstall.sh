#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_recent_orders_order_statuses'
wp option delete 'alg_wc_recent_orders_template_order_item_row'
wp option delete 'alg_wc_recent_orders_limit'
wp option delete 'alg_wc_recent_orders_template_before'
wp option delete 'alg_wc_recent_orders_template_row'
wp option delete 'alg_wc_recent_orders_template_after'
wp option delete 'alg_wc_recent_orders_template_guest'
wp option delete 'alg_wc_recent_orders_order_date_format'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'alg_wc_recent_orders_use_transients'
wp option delete 'alg_wc_recent_orders_transients_expiration'
wp option delete 'alg_wc_recent_orders_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

