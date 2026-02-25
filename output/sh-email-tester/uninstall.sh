#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shet_settings'
wp option delete 'shmet_email_tester_settings'

# Clear Cron Jobs
wp cron event delete 'shet_clear_logs'

