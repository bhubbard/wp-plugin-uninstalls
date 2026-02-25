#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpua_remove_on_uninstall'
wp option delete 'wpua_enable_notification'
wp option delete 'wpua_role_change_notification_text'
wp option delete 'wpua_role_restore_notification_text'

# Clear Cron Jobs
wp cron event delete 'wpua_change_role_event'

