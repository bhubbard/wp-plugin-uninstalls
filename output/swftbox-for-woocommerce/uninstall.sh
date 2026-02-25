#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swftbox_integration_key'
wp option delete 'swftbox_oauth_state'
wp option delete 'swftbox_wc_consumer_key'
wp option delete 'swftbox_wc_consumer_secret'
wp option delete 'swftbox_wc_key_permissions'
wp option delete 'swftbox_wizard_oauth_state'
wp option delete 'swftbox_retailer_id'
wp option delete 'swftbox_retailer_name'
wp option delete 'swftbox_retailer_email'
wp option delete 'swftbox_connection_status'
wp option delete 'swftbox_connected_at'
wp option delete 'swftbox_require_phone'
wp option delete 'swftbox_last_successful_sync'
wp option delete 'swftbox_credentials_synced'

# Delete Transients
wp transient delete 'swftbox_settings_saved'
wp transient delete 'swftbox_connection_error'
wp transient delete 'swftbox_oauth_sync_failed'
wp transient delete 'swftbox_oauth_success'
wp transient delete 'swftbox_oauth_error'
wp transient delete 'swftbox_oauth_disconnected'
wp transient delete 'swftbox_oauth_notice_shown'
wp transient delete 'swftbox_trigger_oauth'
wp transient delete 'swftbox_webhook_error'
wp transient delete 'swftbox_webhook_health_warning'
wp transient delete 'swftbox_wizard_setup_mode'
wp transient delete 'swftbox_activated'

# Clear Cron Jobs
wp cron event delete 'swftbox_webhook_health_check'
wp cron event delete 'swftbox_health_check'

