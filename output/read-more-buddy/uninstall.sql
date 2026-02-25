-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_mb_read_more_text', 'read_mb_read_less_text', 'read_mb_text_color', 'read_mb_text_hover', 'read_mb_button_background', 'read_mb_button_hover', 'read_mb_width', 'read_mb_font_size', 'read_mb_display_radio', 'read_mb_display_position');
DELETE FROM wp_options WHERE option_name LIKE '%_display_radio';
DELETE FROM wp_options WHERE option_name LIKE '%_display_position';
DELETE FROM wp_options WHERE option_name LIKE '%_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%_font_size';
DELETE FROM wp_options WHERE option_name LIKE '%_text_hover';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_button_background';
DELETE FROM wp_options WHERE option_name LIKE '%_button_hover';
DELETE FROM wp_options WHERE option_name LIKE '%_read_more_text';
DELETE FROM wp_options WHERE option_name LIKE '%_read_less_text';

