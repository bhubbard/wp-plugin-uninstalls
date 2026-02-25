#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email_content'

# Delete Transients
wp transient delete 'bulk_user_email'
wp transient delete 'bulk_email_track'

# Clear Cron Jobs
wp cron event delete 'custom_send_email'

