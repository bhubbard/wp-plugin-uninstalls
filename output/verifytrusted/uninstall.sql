-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vtrust_enable_custom_styles', 'vtrust_card_bg_color', 'vtrust_card_border_color', 'vtrust_name_color', 'vtrust_body_color', 'vtrust_font_family', 'vtrust_name_font_size', 'vtrust_date_font_size', 'vtrust_body_font_size');

