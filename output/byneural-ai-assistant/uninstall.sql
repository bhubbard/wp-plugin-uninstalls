-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byneuralaiassistants_plugin_enable_api', 'byneuralaiassistants_wc_api_client');

