#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'cron_mtp_sendtweet'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mtp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mtp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mtp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mtp_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mtp_tweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mtp_tweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mtp_tweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mtp_tweet'"
