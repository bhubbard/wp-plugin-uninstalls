#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sentwatch_connected'
wp option delete 'sentwatch_api_key'
wp option delete 'sentwatch_site_uuid'
wp option delete 'sentwatch_last_heartbeat'
wp option delete 'sentwatch_interval'
wp option delete 'sentwatch_heartbeat_email'

# Clear Cron Jobs
wp cron event delete 'sentwatch_send_heartbeat'
wp cron event delete 'sentwatch_check_config'

