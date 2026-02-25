#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwvpsb_get_settings'
wp option delete 'cache'
wp option delete 'save_posts_offset'
wp option delete 'save_terms_offset'
wp option delete 'wp_rocket_settings'

# Clear Cron Jobs
wp cron event delete 'cwvpsb_autoclear_cron'
wp cron event delete 'isa_add_every_one_hour'
wp cron event delete 'delete_gravatars_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
