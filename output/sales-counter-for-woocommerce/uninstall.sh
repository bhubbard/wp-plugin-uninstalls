#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sales_counter_enable_check'
wp option delete 'sales_counter_enable_title'
wp option delete 'sales_counter_zero_disable_check'
wp option delete 'sales_counter_wc_select_option'
wp option delete 'sales_counter_single_enable_check'
wp option delete 'sales_counter_wc_select_single_option'
wp option delete 'sales_counter_zero_custom_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
