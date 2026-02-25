#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsynchro_healthcheck_timestamp'
wp option delete 'wpsynchro_dbversion'
wp option delete 'wpsynchro_filepopulation_current'
wp option delete 'wpsynchro_filepopulation_current_download_id'
wp option delete 'wpsynchro_filepopulation_problems'
wp option delete 'wpsynchro_success_count'
wp option delete 'wpsynchro_sync_logs'
wp option delete 'wpsynchro_migrations'
wp option delete 'wpsynchro_dismiss_review_request'
wp option delete 'wpsynchro_accesskey'
wp option delete 'wpsynchro_license_key'
wp option delete 'wpsynchro_migration_last_run_timestamp'
wp option delete 'wpsynchro_usage_reporting_selection'
wp option delete 'wpsynchro_setup_basic_auth'
wp option delete 'wpsynchro_slow_hosting_optimize'
wp option delete 'wpsynchro_muplugin_enabled'
wp option delete 'wpsynchro_allowed_methods'
wp option delete 'wpsynchro_ip_security_enabled'
wp option delete 'wpsynchro_debuglogging_enabled'

# Clear Cron Jobs
wp cron event delete 'wpsynchro_cron_scheduled_migrations'

