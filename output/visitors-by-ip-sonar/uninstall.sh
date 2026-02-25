#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vips_api_key'
wp option delete 'vips_tracking_mode'
wp option delete 'vips_country_acl_enabled'
wp option delete 'vips_blocked_countries'
wp option delete 'vips_country_filter_mode'
wp option delete 'vips_allow_bots'
wp option delete 'vips_db_version'

# Clear Cron Jobs
wp cron event delete 'vips_visitors_cleanup'

