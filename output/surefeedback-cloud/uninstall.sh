#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surefeedback_connection_id'
wp option delete 'surefeedback_site_id'
wp option delete 'surefeedback_bearer_token'
wp option delete 'surefeedback_organization_id'
wp option delete 'surefeedback_access_token'
wp option delete 'surefeedback_webhook_state'
wp option delete 'surefeedback_allowed_roles'
wp option delete 'surefeedback_page_settings'
wp option delete 'surefeedback_widget_control_enabled'
wp option delete 'surefeedback_site_token'
wp option delete 'surefeedback_parent_url'
wp option delete 'surefeedback_widget_script_url'
wp option delete 'surefeedback_is_fully_verified'
wp option delete 'surefeedback_last_verification'
wp option delete 'surefeedback_last_sync'
wp option delete 'surefeedback_verification_status'
wp option delete 'surefeedback_load_in_admin'

# Delete Transients
wp transient delete 'surefeedback_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'surefeedback_poll_connection_tokens'
wp cron event delete 'surefeedback_auto_verify'
wp cron event delete 'surefeedback_hourly_verify'
wp cron event delete 'surefeedback_cleanup_rate_limits'

