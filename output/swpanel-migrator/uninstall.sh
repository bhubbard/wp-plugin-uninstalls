#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swpanel_migrator_run_task'
wp option delete 'swpanel_migrator_token'
wp option delete 'swpanel_migrator_secret_key'
wp option delete 'swpanel_migrator_status'
wp option delete 'swpanel_migrator_maintenance'
wp option delete 'swpanel_migrator_token_url'
wp option delete 'swpanel_migrator_url'
wp option delete 'swpanel_migrator_sql_uuid'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'swpanel_migrator_cleanup_hook'

