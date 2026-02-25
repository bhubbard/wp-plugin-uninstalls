#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisprtsw_api_settings'
wp option delete 'aisprtsw_post_settings'
wp option delete 'aisprtsw_db_version'

# Clear Cron Jobs
wp cron event delete 'aisprtsw_fetch_cron'
wp cron event delete 'aisprtsw_cron'

