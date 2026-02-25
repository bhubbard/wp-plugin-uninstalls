-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popup_plugin_value_subject', 'popup_plugin_value_width', 'popup_plugin_value_maxwidth', 'popup_plugin_value_padding', 'popup_plugin_value_btncolor', 'popup_plugin_value_namecolor', 'popup_plugin_value_whatscolor', 'popup_plugin_value_tag', 'popup_plugin_value_shortcode', 'popup_plugin_value_tab');
DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_title%';
DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_link%';
DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_tab%';

