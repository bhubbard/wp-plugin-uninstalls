#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ncloud_mailer_settings'

# Delete Transients
wp transient delete 'ncloud_mailer_logs'

# Clear Cron Jobs
wp cron event delete 'ncloud_mailer_cleanup'

