#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aitepc_expiry_date_post_types'
wp option delete 'aitepc_custom_fields'

# Clear Cron Jobs
wp cron event delete 'aitepc_check_expiry_date_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitepc_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitepc_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitepc_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitepc_expiry_date'"
