-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f8mcrm_analytics_connection_start', 'f8mcrm_analytics_connection_complete', 'f8mcrm_analytics_plugin_data_sent', 'f8mcrm_analytics_auto_export_enabled', 'f8mcrm_analytics_tracking_website_id', 'f8mcrm_analytics_tracking_script_url', 'site_unique_id', 'f8mcrm_analytics_is_tracking_injected', 'f8mcrm_analytics_marketing_api_key', 'f8mcrm_analytics_custom_tracking_enabled', 'f8mcrm_analytics_contents_exported', 'f8mcrm_analytics_last_export_timestamp', 'f8mcrm_analytics_activation_redirect', 'f8mcrm_analytics_connection_status', 'f8mcrm_analytics_plugin_data');

