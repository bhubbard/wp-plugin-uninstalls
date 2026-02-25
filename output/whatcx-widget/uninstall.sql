-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whatcx_widget_app_key', 'whatcx_widget_api_key', 'whatcx_widget_active');

