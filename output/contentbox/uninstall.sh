#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contentbox_api_token'
wp option delete 'contentbox_api_id'
wp option delete 'contentbox_cat'
wp option delete 'contentbox_post_status'
wp option delete 'contentbox_shedule_type'
wp option delete 'contentbox_is_add_img'

# Clear Cron Jobs
wp cron event delete 'contentbox_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contentbox_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contentbox_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contentbox_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contentbox_id'"
