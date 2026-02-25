#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cuar/cron/events?schedule=weekly'
wp cron event delete 'cuar/cron/events?schedule=daily'
wp cron event delete 'cuar/cron/events?schedule=hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar_gateway_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar_gateway_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar_gateway_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar_gateway_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuar_private_file_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuar_private_file_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuar_private_file_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuar_private_file_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuar_private_page_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuar_private_page_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuar_private_page_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuar_private_page_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__cuar_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__cuar_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__cuar_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__cuar_session'"
