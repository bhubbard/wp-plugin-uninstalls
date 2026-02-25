-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyloginforscala_plugin_do_redirect', 'easyloginforscala_api_key', 'easyloginforscala_api_url', 'easyloginforscala_panel_path', 'easyloginforscala_admin_email', 'easyloginforscala_accountuser', 'easyloginforscala_username', 'easyloginforscala_shortcode_text', 'easyloginforscala_btn_color', 'easyloginforscala_btn_hover', 'easyloginforscala_btn_textcolor', 'easyloginforscala_btn_textsize');

