-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfgeo_webhook_enabled', 'cfgeo_webhook_urls', 'cfgeo_webhook_secret', 'cfgeo_webhook_timeout', 'cfgeo_webhook_logs', 'cfgeo_google_api_key', 'cfgeo_color_picker', 'cfgeo_activation_redirect', 'cfgeo_debug_mode', 'cfgeo_ipstack_access');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form_data', 'cfgeo-country', 'cfgeo-state', 'cfgeo-city', 'cfgeo-lat-long', 'cfgeo-api-used', 'cfgeo-debug-ipstack', 'cfgeo-debug-ipapi', 'cfgeo-debug-keycdn', '_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form_data', 'cfgeo-country', 'cfgeo-state', 'cfgeo-city', 'cfgeo-lat-long', 'cfgeo-api-used', 'cfgeo-debug-ipstack', 'cfgeo-debug-ipapi', 'cfgeo-debug-keycdn', '_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form_data', 'cfgeo-country', 'cfgeo-state', 'cfgeo-city', 'cfgeo-lat-long', 'cfgeo-api-used', 'cfgeo-debug-ipstack', 'cfgeo-debug-ipapi', 'cfgeo-debug-keycdn', '_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form_data', 'cfgeo-country', 'cfgeo-state', 'cfgeo-city', 'cfgeo-lat-long', 'cfgeo-api-used', 'cfgeo-debug-ipstack', 'cfgeo-debug-ipapi', 'cfgeo-debug-keycdn', '_form_id');

