#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'
wp cron event delete 'yml-importer-products'
wp cron event delete 'yml-importer-categories'
wp cron event delete 'yml-importer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yml-importer:picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yml-importer:picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yml-importer:picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yml-importer:picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yml-importer:id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yml-importer:id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yml-importer:id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yml-importer:id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yml-importer:date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yml-importer:date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yml-importer:date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yml-importer:date'"
