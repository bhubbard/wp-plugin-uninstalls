#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wp_cron_importer_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tumblr_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tumblr_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tumblr_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tumblr_%'"
