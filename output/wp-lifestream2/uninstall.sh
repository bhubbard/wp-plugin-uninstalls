#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifestream_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lifestream_%'"

# Clear Cron Jobs
wp cron event delete 'lifestream_cron'
wp cron event delete 'lifestream_cleanup'
wp cron event delete 'lifestream_digest_cron'
wp cron event delete 'Lifestream_Hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lifestream_digest_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lifestream_digest_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lifestream_digest_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lifestream_digest_date'"
