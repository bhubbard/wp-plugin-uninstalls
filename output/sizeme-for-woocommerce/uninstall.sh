#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sizeme_version'
wp option delete 'service_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_order_id'"
