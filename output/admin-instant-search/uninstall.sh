#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_instant_search_settings_polyplugins'
wp option delete 'admin_instant_search_notice_dismissed_polyplugins'
wp option delete 'admin_instant_search_version_polyplugins'
wp option delete 'admin_instant_search_indexes_polyplugins'

# Clear Cron Jobs
wp cron event delete 'admin_instant_search_background_worker'

