#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'farcaster_wp'
wp option delete 'farcaster_wp_subscriptions'

# Clear Cron Jobs
wp cron event delete 'farcaster_wp_send_publish_post_notifications'
wp cron event delete 'farcaster_wp_retry_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'farcaster_wp_suppress_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'farcaster_wp_suppress_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'farcaster_wp_suppress_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'farcaster_wp_suppress_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'farcaster_wp_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'farcaster_wp_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'farcaster_wp_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'farcaster_wp_tokens'"
