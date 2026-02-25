#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WIND_start_date'
wp option delete 'WIND_start_time'
wp option delete 'WIND_interval_time'
wp option delete 'WIND_draft_num'
wp option delete 'WIND_draf_orderby'
wp option delete 'WIND_recurrence'
wp option delete 'WIND_recurrence_times'

# Clear Cron Jobs
wp cron event delete 'WIND_cron_draft_update_hook'

