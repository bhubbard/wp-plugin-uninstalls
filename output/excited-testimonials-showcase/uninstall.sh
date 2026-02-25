#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonials'"
