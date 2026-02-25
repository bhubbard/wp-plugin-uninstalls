#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient__mailster_send_period_timeout'
wp option delete '_transient__mailster_send_period'

# Delete Transients
wp transient delete 'mailster_check_bounces_lock'
wp transient delete '_mailster_sendgrid_last_bounce_check'

# Clear Cron Jobs
wp cron event delete 'mailster_sendgrid_cron'

