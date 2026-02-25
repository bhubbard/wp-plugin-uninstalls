#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filesfence_wp_version'
wp option delete 'filesfence_search_main_files'
wp option delete 'filesfence_create'

# Clear Cron Jobs
wp cron event delete 'filesfence_cron'

