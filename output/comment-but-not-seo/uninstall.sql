-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbns_message_input', 'cbns_custom_css_input', 'cbns_display_attribute', 'cbns_margin', 'cbns_font_size', 'cbns_text_color');

