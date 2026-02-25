-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrtext_radio', 'mrtext_text_field_1', 'mrtext_text_field_1_link', 'mrtext_text_field_2', 'mrtext_text_field_2_link', 'mrtext_text_field_3', 'mrtext_text_field_3_link', 'mrtext_text_field_4', 'mrtext_text_field_4_link', 'mrtext_text_field_5', 'mrtext_text_field_5_link', 'mrtext_bg_color_option', 'mrtext_color_option', 'mrtext_hover_color_option', 'mrtext_font_size', 'mrtext_font_weight', 'mrtext_font_direction', 'mrtext_font_scroll_delay', 'mmrtext_radio_before_after');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mrt_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('mrt_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('mrt_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mrt_dismissed_notice');

