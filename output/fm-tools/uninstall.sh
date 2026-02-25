#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fm_tools_active'

# Clear Cron Jobs
wp cron event delete 'fm_tools_active_check_cron'
wp cron event delete 'fm_tools_active_check_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fm_tools_active_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fm_tools_active_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fm_tools_active_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fm_tools_active_campaign'"
