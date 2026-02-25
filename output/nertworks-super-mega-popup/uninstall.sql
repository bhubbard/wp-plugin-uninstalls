-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('super_mega_include_stylesheets', 'popup_selection', 'super_mega_popup_enabled', 'super_mega_popup_multi_site_all', 'colorbox_popup_show_when_logged_in', 'colorbox_popup_show_when_logged_out', 'super_mega_popup_multi_site_domain', 'super_mega_theme_jquery_enabled', 'super_mega_popup_cookie', 'url_of_popup1', 'super_mega_popup_specific_or_global', 'super_mega_popup_source', 'super_mega_popup_colorbox_theme', 'super_mega_colobox_mode', 'colorbox_popup_width', 'colorbox_popup_height', 'super_mega_popup_message1_heading', 'super_mega_popup_message1', 'super_mega_popup_multi_site_enabled', 'nertworks-popup-settings-group', 'nertworks_popup_plugin_do_activation_redirect_popup', 'super_mega_popup_message_shortcode');

