-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ddsp_allowed_post_types', 'ddsp_allowed_taxonomies', 'ddsp_enable_custom_search', 'ddsp_search_layout', 'ddsp_font_color', 'ddsp_button_bg_color', 'ddsp_grid_bg_color', 'ddsp_button_hover_color', 'ddsp_button_text_color', 'ddsp_button_hover_text_color', 'ddsp_search_gutenberg_templates');

