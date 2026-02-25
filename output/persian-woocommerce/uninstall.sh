#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PW_Options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'persian_woo_notice_number_%'"
wp option delete 'pw_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pw_dismiss_notice_%'"
wp option delete 'pw_dismiss_notice_all'
wp option delete 'persian_woocommerce_feed'
wp option delete 'woocommerce_allow_tracking'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_analytics_enabled'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_excluded_report_order_statuses'
wp option delete 'woocommerce_date_type'

# Delete Transients
wp transient delete 'pw_update_notices'

