#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_expire_posts_options'

# Clear Cron Jobs
wp cron event delete 'auto_expire_posts_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_expire_posts_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_expire_posts_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_expire_posts_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_expire_posts_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_expire_posts_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_expire_posts_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_expire_posts_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_expire_posts_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_expire_posts_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_expire_posts_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_expire_posts_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_expire_posts_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_expire_posts_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_expire_posts_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_expire_posts_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_expire_posts_expired'"
