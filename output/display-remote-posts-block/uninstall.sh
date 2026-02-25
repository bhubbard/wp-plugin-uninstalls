#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display_remote_posts_block_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_purchased'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donated'"

# Clear Cron Jobs
wp cron event delete 'display_remote_posts_block_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed'"
