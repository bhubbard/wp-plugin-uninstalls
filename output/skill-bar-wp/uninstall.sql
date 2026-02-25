-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpskillbar_save_meta_value', 'skill_title_color', 'skill_bar_bg_color', 'skill_bar_percentage_bg_color', 'skill_value_bg_color', 'skill_title_font_size', 'skill_value_font_size', 'skill_title_font_family', 'pValue_font_family', 'skill_bar_height', 'skill_bar_b_radius');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpskillbar_save_meta_value', 'skill_title_color', 'skill_bar_bg_color', 'skill_bar_percentage_bg_color', 'skill_value_bg_color', 'skill_title_font_size', 'skill_value_font_size', 'skill_title_font_family', 'pValue_font_family', 'skill_bar_height', 'skill_bar_b_radius');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpskillbar_save_meta_value', 'skill_title_color', 'skill_bar_bg_color', 'skill_bar_percentage_bg_color', 'skill_value_bg_color', 'skill_title_font_size', 'skill_value_font_size', 'skill_title_font_family', 'pValue_font_family', 'skill_bar_height', 'skill_bar_b_radius');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpskillbar_save_meta_value', 'skill_title_color', 'skill_bar_bg_color', 'skill_bar_percentage_bg_color', 'skill_value_bg_color', 'skill_title_font_size', 'skill_value_font_size', 'skill_title_font_family', 'pValue_font_family', 'skill_bar_height', 'skill_bar_b_radius');

