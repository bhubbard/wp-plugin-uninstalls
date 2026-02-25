#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdt_settings'
wp option delete 'wpdt_group_logs_status'
wp option delete 'wpdt_auto_refresh_status'
wp option delete 'cron'
wp option delete 'debug_log_tool_current_version'

# Delete Transients
wp transient delete 'wpdt_cron_status_ok'
wp transient delete 'wpdt_installing'

