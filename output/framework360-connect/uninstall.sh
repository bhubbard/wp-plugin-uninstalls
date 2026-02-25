#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fw360_api_key'
wp option delete 'fw360_api_url'
wp option delete 'fw360_allowed_roles'
wp option delete 'fw360_default_tags'
wp option delete 'fw360_users_sync'
wp option delete 'fw360_sync_data'

# Clear Cron Jobs
wp cron event delete 'init_crons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fw360_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fw360_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fw360_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fw360_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fw360_order_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fw360_order_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fw360_order_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fw360_order_synced'"
