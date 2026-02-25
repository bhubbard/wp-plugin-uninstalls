#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdntr'
wp option delete 'cdntr_api_check_status'
wp option delete 'cdntr_purge_telemetry'

# Clear Cron Jobs
wp cron event delete 'cdntr_run_coalesced_purge'

