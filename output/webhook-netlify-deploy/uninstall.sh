#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webhook_address'
wp option delete 'netlify_user_agent'
wp option delete 'netlify_api_key'
wp option delete 'netlify_site_id'
wp option delete 'enable_scheduled_builds'
wp option delete 'select_schedule_builds'
wp option delete 'select_time_build'

# Clear Cron Jobs
wp cron event delete 'scheduled_netlify_build'

