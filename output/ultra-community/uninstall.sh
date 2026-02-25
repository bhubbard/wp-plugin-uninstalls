#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultracomm-online-users'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'MchWpTaskScheduler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultracomm-user-info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultracomm-user-info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultracomm-user-info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultracomm-user-info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uc-stars-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uc-stars-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uc-stars-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uc-stars-rating'"
