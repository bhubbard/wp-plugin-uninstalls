#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wac_general_options'
wp option delete 'wac_add_customer'
wp option delete 'wac_add_customer_count'
wp option delete 'wac_edit_customer_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_custom_field_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_custom_field_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_custom_field_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_custom_field_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wac_created_by_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wac_created_by_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wac_created_by_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wac_created_by_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wac_created_by_plugin_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wac_created_by_plugin_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wac_created_by_plugin_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wac_created_by_plugin_time'"
