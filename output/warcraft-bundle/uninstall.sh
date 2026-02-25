#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_force_locale'
wp option delete 'wb_force_utf8'
wp option delete 'wb_cache_time'
wp option delete 'wb_guild_name'
wp option delete 'wb_realm_name'
wp option delete 'wb_guild_rank'
wp option delete 'wb_gm_name'
wp option delete 'wb_active_tool'
wp option delete 'wb_calendar_alert'
wp option delete 'wb_utc'

# Clear Cron Jobs
wp cron event delete 'wb_schedule_roster'

