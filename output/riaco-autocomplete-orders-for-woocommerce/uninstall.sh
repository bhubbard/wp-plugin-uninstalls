#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riaco_autocomplete_orders_enabled'
wp option delete 'riaco_autocomplete_orders_from_status'
wp option delete 'riaco_autocomplete_orders_product_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_triggered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_triggered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_triggered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_triggered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note'"
