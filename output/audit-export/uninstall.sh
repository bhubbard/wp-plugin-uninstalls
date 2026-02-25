#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'audit_export_settings'
wp option delete 'audit_export_remote_post_settings'
wp option delete 'sidebars_widgets'
wp option delete 'audit_export_db_version'
wp option delete 'audit_export_last_cron_run'
wp option delete 'audit_export_preserve_data_on_uninstall'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'audit_export_cron_hook'
wp cron event delete 'audit_export_process_queue'

