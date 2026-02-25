-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('supewp82_data', 'supermarquee_lite_plugin_settings');

