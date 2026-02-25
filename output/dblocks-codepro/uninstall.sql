-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dblocks_editor_copy_button', 'dblocks_syntax_display_language', 'classic-editor-replace', 'dblocks_editor_theme', 'dblocks_editor_font_size', 'dblocks_editor_line_height', 'dblocks_editor_letter_spacing', 'dblocks_editor_tab_size', 'dblocks_editor_word_wrap', 'dblocks_editor_line_numbers', 'dblocks_editor_minimap', 'dblocks_editor_rulers', 'dblocks_editor_bracket_pair_colorization', 'dblocks_editor_glyph_margin', 'dblocks_editor_line_numbers_minimap', 'dblocks_editor_scroll_beyond_last_line', 'dblocks_editor_automatic_layout', 'dblocks_editor_copy_button_text', 'dblocks_editor_copy_button_position', 'dblocks_syntax_copy_button');

