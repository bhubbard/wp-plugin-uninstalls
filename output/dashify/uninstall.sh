#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashify_on'
wp option delete 'dashify_dismissed_release_notices_forever'
wp option delete 'dashify_dismissed_notices'
wp option delete 'dashify_analytics_range'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'dashify_line_item_menu_order_column_enabled'
wp option delete 'dashify_line_item_menu_order_column_default_sort'
wp option delete 'dashify_list_table_open_search_and_filter_by_default'
wp option delete 'woocommerce_currency'
wp option delete 'dashify_migrated_order_edit_meta_box_layout_to_user_meta'
wp option delete 'dashify_migrated_subscription_edit_meta_box_layout_to_user_meta'
wp option delete 'dashify_navigation_enabled'
wp option delete 'udb_modules'

