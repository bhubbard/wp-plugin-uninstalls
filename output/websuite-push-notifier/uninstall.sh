#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'intro_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-changed'"
wp option delete 'websuite_push_notifier_db_version'

# Clear Cron Jobs
wp cron event delete 'wspnCustomCronHook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sentToSns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sentToSns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sentToSns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sentToSns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sentToFCM'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sentToFCM'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sentToFCM'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sentToFCM'"
