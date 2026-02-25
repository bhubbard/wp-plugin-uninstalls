#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r4me_api_key'
wp option delete 'r4me_auto_send'
wp option delete 'r4m_sync_status'
wp option delete 'r4me_order_alias'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'route4me_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'route4me_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'route4me_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'route4me_order_id'"
