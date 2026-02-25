#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brainypress_gemini_api_key'
wp option delete 'brainypress_tw_consumer_key'
wp option delete 'brainypress_tw_consumer_secret'
wp option delete 'brainypress_tw_access_token'
wp option delete 'brainypress_tw_access_secret'
wp option delete 'brainypress_active_orders'
wp option delete 'brainypress_review_dismissed'

# Clear Cron Jobs
wp cron event delete 'brainypress_hourly_check_v8'

