#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hw4wp_options'

# Clear Cron Jobs
wp cron event delete 'hw4wp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-hotwords_custom_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-hotwords_custom_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-hotwords_custom_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-hotwords_custom_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-hotwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-hotwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-hotwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-hotwords'"
