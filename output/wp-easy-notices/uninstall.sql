-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_easy_notices_clear_dimissals', 'wp_easy_notices_padding_top_bottom', 'wp_easy_notices_padding_left_right', 'wp_easy_notices_font_size', 'wp_easy_notices_background', 'wp_easy_notices_text_color', 'wp_easy_notices_dismissable', 'wp_easy_notices_position', 'wp_easy_notices_text', 'wp_easy_notices_dismiss_icon');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';

