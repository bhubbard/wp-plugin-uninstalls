#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpimmo'
wp option delete 'wpimmo_search'
wp option delete 'wpimmo_groups'
wp option delete 'wpimmo_custom_data'

# Clear Cron Jobs
wp cron event delete 'wpimmo_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpimmo_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpimmo_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpimmo_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpimmo_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpimmo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpimmo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpimmo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpimmo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpimmo_images_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpimmo_images_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpimmo_images_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpimmo_images_token'"
