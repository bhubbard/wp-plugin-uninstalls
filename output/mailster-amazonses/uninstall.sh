#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailster_amazonsns_last_response'
wp option delete '_transient__mailster_send_period_timeout'
wp option delete '_transient__mailster_send_period'

# Clear Cron Jobs
wp cron event delete 'mailster_amazonses_cron'

