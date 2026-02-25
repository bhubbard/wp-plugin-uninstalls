#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookiepilot_mode'
wp option delete 'cookiepilot_access_token'
wp option delete 'cookiepilot_refresh_token'
wp option delete 'cookiepilot_domain_id'
wp option delete 'cookiepilot_api_key'
wp option delete 'cookiepilot_agency_token'

# Delete Transients
wp transient delete 'cookiepilot_config_cache'

# Clear Cron Jobs
wp cron event delete 'cookiepilot_daily_cleanup'

