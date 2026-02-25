-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sh_title', 'sh_message', 'sh_show', 'sh_show_links_1', 'sh_show_links_2', 'sh_show_custom_code', 'sh_bg_color', 'sh_title_color', 'sh_message_color', 'sh_title_font_size', 'sh_title_text_align', 'sh_title_font_weight', 'sh_title_font_style', 'sh_title_font_decoration', 'sh_message_font_size', 'sh_message_text_align', 'sh_message_font_weight', 'sh_message_font_style', 'sh_message_font_decoration', 'sh_code_message', 'sh_width', 'sh_border_color', 'sh_border_style', 'sh_border_width', 'sh_show_clock_date', 'sh_show_clock_time', 'sh_date_format', 'sh_date_position', 'sh_date_font_size', 'sh_date_font_weight', 'sh_date_font_color', 'sh_date_font_style', 'sh_date_font_decoration', 'sh_time_format', 'sh_time_position', 'sh_time_font_size', 'sh_time_font_color', 'sh_time_font_weight', 'sh_time_font_style', 'sh_time_font_decoration');
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_title_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_text_align_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_font_icon_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_open_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_weight_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_style_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_decoration_%';
DELETE FROM wp_options WHERE option_name LIKE 'sh_col_width_%';

