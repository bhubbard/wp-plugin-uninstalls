#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'republish_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_datetime'"
