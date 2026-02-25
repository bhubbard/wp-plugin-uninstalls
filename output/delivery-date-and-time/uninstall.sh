#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_ddt_start_time'
wp option delete 'wc_settings_ddt_end_time'
wp option delete 'wc_settings_ddt_interval'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_delivery_date_and_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_delivery_date_and_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_delivery_date_and_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_delivery_date_and_time'"
