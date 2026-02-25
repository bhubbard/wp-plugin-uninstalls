#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_stock_triggers_adjust_line_item_product_stock_enabled'
wp option delete 'alg_wc_stock_triggers_increase_on_ajax_order'
wp option delete 'alg_wc_stock_triggers_shop_order_bulk_actions'
wp option delete 'alg_wc_stock_triggers_debug'
wp option delete 'alg_wc_stock_triggers_adjust_line_item_product_stock_statuses'
wp option delete 'alg_wc_stock_triggers_plugin_enabled'
wp option delete 'alg_wc_stock_triggers_force_can_update_order_stock'
wp option delete 'alg_wc_stock_triggers_enabled'
wp option delete 'alg_wc_stock_triggers'
wp option delete 'alg_wc_stock_triggers_do_remove'
wp option delete 'alg_wc_stock_triggers_require_product'
wp option delete 'alg_wc_stock_triggers_require_product_cat'
wp option delete 'alg_wc_stock_triggers_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

