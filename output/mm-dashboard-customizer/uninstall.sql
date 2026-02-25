-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmdc_login_logo', 'mmdc_login_bg', 'mmdc_login_logo_url', 'mmdc_login_logo_title', 'mmdc_login_bg_color', 'mmdc_login_message', 'mmdc_login_message_color', 'mmdc_login_btn_color', 'mmdc_remove_help', 'mmdc_remove_screen_options', 'mmdc_widgets_welcome', 'mmdc_widgets_glance', 'mmdc_widgets_activity', 'mmdc_widgets_draft', 'mmdc_widgets_quick_draft', 'mmdc_widgets_wp_news', 'mmdc_widgets_plugins', 'mmdc_remove_wp_topbar', 'mmdc_remove_wp_edit_topbar', 'mmdc_remove_new_topbar', 'mmdc_change_howdy_topbar', 'mmdc_wp_thankyou_footer_disable', 'mmdc_wp_thankyou_footer', 'mmdc_wp_version_disable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_welcome_panel');

