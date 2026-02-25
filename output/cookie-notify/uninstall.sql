-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnpl_last_active_panel', 'cnpl_text_panel_opened', 'cnpl_position', 'cnpl_content_text', 'cnpl_content_link_regulation_br', 'cnpl_content_link_regulation_text', 'cnpl_content_link_regulation_url', 'cnpl_content_link_howto_br', 'cnpl_content_link_howto_text', 'cnpl_content_link_howto_url', 'cnpl_content_button_text', 'cnpl_theme_css_box_inner', 'cnpl_theme_css_box_outer', 'cnpl_theme_css_button', 'cnpl_theme_css_links', 'cnpl_theme_css_text', 'cnpl_settings_time', 'cnpl_on_off', 'cnpl_remember_border', 'cnpl_remember_corners', 'cnpl_remember_button', 'cnpl_html', 'cnpl_js', 'cnpl_css', 'my_plugin_do_activation_redirect', 'cnpl_form_hash');

