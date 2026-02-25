#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfs-global-options'
wp option delete 'sfs-fb-credentials'
wp option delete 'sfs-yt-credentials'
wp option delete 'sfs-flickr-credentials'
wp option delete 'sfs-twitter-credentials'
wp option delete 'sfs-insta-credentials'
wp option delete 'sfs-feed'

# Clear Cron Jobs
wp cron event delete 'sfs_cron_hook'
wp cron event delete 'sfs_cron_hook_secondary'
wp cron event delete 'sfs_cron_hook_videos'
wp cron event delete 'sfs_cron_hook_albums'
wp cron event delete 'sfs_cron_hook_instagram'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_link'"
