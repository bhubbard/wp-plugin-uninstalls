-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urtbenz_custom_words_per_minute', 'urtbenz_display_on_pages', 'urtbenz_display_on_posts', 'urtbenz_custom_reading_prefix', 'urtbenz_custom_reading_postfix', 'urtbenz_custom_text_alignment', 'urtbenz_custom_reading_time_position', 'urtbenz_custom_color', 'urtbenz_custom_font_style', 'urtbenz_custom_font_size', 'urtbenz_custom_font_weight', 'urtbenz_words_per_minute', 'urtbenz_reading_prefix', 'urtbenz_reading_postfix', 'urtbenz_color', 'urtbenz_font_style', 'urtbenz_font_size', 'urtbenz_font_weight', 'urtbenz_text_alignment');

