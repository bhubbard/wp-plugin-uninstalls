-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pa_onsite_messaging_web_id', 'pa_onsite_messaging_plugin_activation');

