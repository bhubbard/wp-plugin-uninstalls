#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onebutton_ai_mode'
wp option delete 'onebutton_last_error'
wp option delete 'onebutton_bot_visits'
wp option delete 'onebutton_auto_cleanup'
wp option delete 'onebutton_log_file_path'

# Clear Cron Jobs
wp cron event delete 'onebutton_auto_cleanup'

