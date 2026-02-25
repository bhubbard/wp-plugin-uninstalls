#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livefot_api_key'
wp option delete 'livefot_api_url'
wp option delete 'livefot_cron_last_run_status_short'
wp option delete 'livefot_cron_last_run_end_short'
wp option delete 'livefot_cron_last_run_status'
wp option delete 'livefot_cron_last_run_end'
wp option delete 'livefot_interval_matches'
wp option delete 'livefot_interval_events'
wp option delete 'livefot_interval_standings'
wp option delete 'livefot_interval_lineups'
wp option delete 'livefot_interval_stats'
wp option delete 'livefot_enable_cron_job'
wp option delete 'livefot_enable_short_cron_job'
wp option delete 'livefot_cron_last_run_start'
wp option delete 'livefot_cron_last_run_start_short'
wp option delete 'livefot_cron_interval_short'
wp option delete 'livefot_cron_hour'
wp option delete 'livefot_cron_minute'
wp option delete 'livefot_manual_date'

# Clear Cron Jobs
wp cron event delete 'livefot_daily_fetch_fixtures'
wp cron event delete 'livefot_short_fetch_fixtures'

