-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cad_login_logo', 'cad_login_bg', 'cad_login_logo_url', 'cad_login_logo_title', 'cad_login_bg_color', 'cad_login_message', 'cad_login_message_color', 'cad_login_btn_color', 'cad_remove_help', 'cad_remove_screen_options', 'cad_widgets_welcome', 'cad_widgets_glance', 'cad_widgets_activity', 'cad_widgets_draft', 'cad_widgets_quick_draft', 'cad_widgets_wp_news', 'cad_widgets_plugins', 'cad_remove_wp_topbar', 'cad_remove_wp_edit_topbar', 'cad_remove_new_topbar', 'cad_change_howdy_topbar', 'cad_wp_thankyou_footer_disable', 'cad_wp_thankyou_footer', 'cad_wp_version_disable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_welcome_panel');

