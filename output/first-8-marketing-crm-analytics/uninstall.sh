#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f8mcrm_analytics_connection_start'
wp option delete 'f8mcrm_analytics_connection_complete'
wp option delete 'f8mcrm_analytics_plugin_data_sent'
wp option delete 'f8mcrm_analytics_auto_export_enabled'
wp option delete 'f8mcrm_analytics_tracking_website_id'
wp option delete 'f8mcrm_analytics_tracking_script_url'
wp option delete 'site_unique_id'
wp option delete 'f8mcrm_analytics_is_tracking_injected'
wp option delete 'f8mcrm_analytics_marketing_api_key'
wp option delete 'f8mcrm_analytics_custom_tracking_enabled'
wp option delete 'f8mcrm_analytics_contents_exported'
wp option delete 'f8mcrm_analytics_last_export_timestamp'

# Delete Transients
wp transient delete 'f8mcrm_analytics_activation_redirect'
wp transient delete 'f8mcrm_analytics_connection_status'
wp transient delete 'f8mcrm_analytics_plugin_data'

# Clear Cron Jobs
wp cron event delete 'f8mcrm_analytics_retry_plugin_data'
wp cron event delete 'f8mcrm_analytics_export_single_post'

