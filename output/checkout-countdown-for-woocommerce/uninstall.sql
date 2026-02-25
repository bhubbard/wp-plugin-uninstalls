-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccfwoo_general_section', 'ccfwoo_enable_countdown', 'ccfwoo_minutes', 'ccfwoo_countdown_style', 'ccfwoo_before_countdown', 'ccfwoo_inbetween_countdown', 'ccfwoo_after_countdown', 'ccfwoo_expired_text', 'ccfwoo_style_bg_color', 'ccfwoo_style_font_color', 'ccfwoo_enable_banner_message', 'ccfwoo_banner_message');

