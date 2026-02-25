#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aln_login_attempts'
wp option delete 'aln_login_attempts_since_viewed'
wp option delete 'aln_current_version'

# Clear Cron Jobs
wp cron event delete 'aln_send_daily_email'

