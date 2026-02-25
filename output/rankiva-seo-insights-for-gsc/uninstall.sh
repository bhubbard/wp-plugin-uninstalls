#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scso_gsc_property'
wp option delete 'scso_sync_state'
wp option delete 'scso_gsc_binding'
wp option delete 'scso_gsc_account_id'
wp option delete 'scso_use_proxy'
wp option delete 'scso_oauth_client_id'
wp option delete 'scso_oauth_client_secret'
wp option delete 'scso_gsc_token'
wp option delete 'scso_gsc_account_email'
wp option delete 'scso_last_sync_time'
wp option delete 'scso_db_version'
wp option delete 'scso_activation_redirect'
wp option delete 'scso_gsc_email'

# Delete Transients
wp transient delete 'scso_sync_error'
wp transient delete 'scso_sync_lock'
wp transient delete 'scso_hide_dev_warning'

# Clear Cron Jobs
wp cron event delete 'scso_run_sync_batch'
wp cron event delete 'scso_auto_sync'

