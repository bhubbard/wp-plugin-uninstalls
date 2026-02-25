#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autonettv_relay_api_settings_fields'
wp option delete 'autonettv_relay_api_settings_categories_fields'
wp option delete 'autonettv_relay_api_categories'
wp option delete 'autonettv_relay_api_settings_schedule_fields'
wp option delete 'autonettv-relay-api-categories'

# Clear Cron Jobs
wp cron event delete 'autonettv_relay_api_events_hook'

