-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fitsoft_livekey', 'fitsoft_accesskey', 'my_fitsoft_options', 'fitsoft_previewurl', 'my_fitsoft_color_options', 'my_fitsoft_hovermenu_options', 'my_fitsoft_chat_options', 'my_fitsoft_membership_options', 'fitsoft_membership_plugin_version');

