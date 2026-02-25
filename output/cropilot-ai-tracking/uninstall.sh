#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'cropilot_access_token'
wp option delete 'cropilot_refresh_token'
wp option delete 'cropilot_woocommerce_enabled'
wp option delete 'cropilot_debug_mode'
wp option delete 'cropilot_consent_mode'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'cropilot_client_id'
wp option delete 'cropilot_health_etag'
wp option delete 'cropilot_health_data_cache'
wp option delete 'cropilot_woocommerce_registered'

# Delete Transients
wp transient delete 'cropilot_scan_task_id'

# Clear Cron Jobs
wp cron event delete 'cropilot_retry_failed_conversions'
wp cron event delete 'cropilot_run_health_check'

