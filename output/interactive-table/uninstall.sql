-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('it_block_heading_position', 'it_cell_title_color', 'it_cell_hover_title_color', 'it_cell_font_color', 'it_cell_hover_font_color', 'it_read_more_font_color', 'it_display_mode', 'it_highlight_mode', 'cell_highlight_color', 'it_single_cell_slug_url', 'it_cell_hover', 'it_title_hover', 'it_read_more', 'readmore_label', 'it_load_default_css', 'it_vertical_posts_per_row', 'fixed_highlight', 'it_clean_on_deactive');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_it_short_description', '_it_url', '_it_cell_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_it_short_description', '_it_url', '_it_cell_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_it_short_description', '_it_url', '_it_cell_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_it_short_description', '_it_url', '_it_cell_class');

