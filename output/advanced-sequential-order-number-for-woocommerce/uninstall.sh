#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_order_number_enable_plugin'
wp option delete 'wc_settings_order_number_order_prefix'
wp option delete 'wc_settings_order_number_order_suffix'
wp option delete 'wc_settings_order_number_counter'
wp option delete 'wc_settings_order_number_order_format'
wp option delete 'wc_settings_order_number_width'
wp option delete 'wc_settings_order_number_start_order_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_order_id'"
