#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'golala_email_sender_options'

# Delete Transients
wp transient delete 'golala_email_sender_activated'

# Clear Cron Jobs
wp cron event delete 'golala_email_sender_daily_check'

