#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartaipress_activate_data_sent'
wp option delete 'smartaipress_deactivate_data_sent'
wp option delete 'smartaipress_settings'

# Clear Cron Jobs
wp cron event delete 'smartaipress_get_api_usage_data'
wp cron event delete 'smartaipress_get_api_usage_data_for_today'

