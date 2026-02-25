#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravity_to_solve360_debug_mode'
wp option delete 'gravity_to_solve360_user'
wp option delete 'gravity_to_solve360_token'
wp option delete 'gravity_to_solve360_debug_start_date'
wp option delete 'gravity_to_solve360_last_export_date'
wp option delete 'gravity_to_solve360_to'
wp option delete 'gravity_to_solve360_from'
wp option delete 'gravity_to_solve360_cc'
wp option delete 'gravity_to_solve360_bcc'

# Clear Cron Jobs
wp cron event delete 'gravity_to_solve360_cron'

