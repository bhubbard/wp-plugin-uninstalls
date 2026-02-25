-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hello_popup_redirect_after_activation', 'hello_popup_custom_css', 'hello_popup_enabled', 'hello_popup_title', 'hello_popup_message', 'hello_popup_image', 'hello_popup_delay', 'hello_popup_expiry', 'hello_popup_auto_show', 'hello_popup_selected_pages', 'hello_popup_cta_text', 'hello_popup_cta_url', 'hello_popup_cta_color', 'hello_popup_close_btn_color', 'hello_popup_shortcode');

