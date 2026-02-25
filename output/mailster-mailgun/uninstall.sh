#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'mailster_check_bounces_lock'
wp transient delete '_mailster_mailgun_last_bounce_check'

# Clear Cron Jobs
wp cron event delete 'mailster_mailgun_cron'

