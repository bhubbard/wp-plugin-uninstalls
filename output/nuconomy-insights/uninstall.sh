#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nuconomy_projecttoken'
wp option delete 'nuconomy_authcode'
wp option delete 'nuconomy_step'
wp option delete 'nuconomy_project_server_token'
wp option delete 'nuconomy_completetoken'
wp option delete 'nuconomy_completemail'

# Clear Cron Jobs
wp cron event delete 'nucon_enrollment_event'

