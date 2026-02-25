#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_ad_list'
wp option delete 'fs_username_aliases'
wp option delete 'fs_bw_list'

# Clear Cron Jobs
wp cron event delete 'fs_cef_list_purge_cron_hook'

