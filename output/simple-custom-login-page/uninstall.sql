-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_custom_login_page_image', 'simple_custom_login_page_url', 'simple_custom_login_page_background', 'simple_custom_login_page_form_bg', 'simple_custom_login_page_text_color', 'simple_custom_login_page_link_color');

