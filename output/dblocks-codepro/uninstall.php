<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dblocks_editor_copy_button');
delete_site_option('dblocks_editor_copy_button');
delete_option('dblocks_syntax_display_language');
delete_site_option('dblocks_syntax_display_language');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('dblocks_editor_theme');
delete_site_option('dblocks_editor_theme');
delete_option('dblocks_editor_font_size');
delete_site_option('dblocks_editor_font_size');
delete_option('dblocks_editor_line_height');
delete_site_option('dblocks_editor_line_height');
delete_option('dblocks_editor_letter_spacing');
delete_site_option('dblocks_editor_letter_spacing');
delete_option('dblocks_editor_tab_size');
delete_site_option('dblocks_editor_tab_size');
delete_option('dblocks_editor_word_wrap');
delete_site_option('dblocks_editor_word_wrap');
delete_option('dblocks_editor_line_numbers');
delete_site_option('dblocks_editor_line_numbers');
delete_option('dblocks_editor_minimap');
delete_site_option('dblocks_editor_minimap');
delete_option('dblocks_editor_rulers');
delete_site_option('dblocks_editor_rulers');
delete_option('dblocks_editor_bracket_pair_colorization');
delete_site_option('dblocks_editor_bracket_pair_colorization');
delete_option('dblocks_editor_glyph_margin');
delete_site_option('dblocks_editor_glyph_margin');
delete_option('dblocks_editor_line_numbers_minimap');
delete_site_option('dblocks_editor_line_numbers_minimap');
delete_option('dblocks_editor_scroll_beyond_last_line');
delete_site_option('dblocks_editor_scroll_beyond_last_line');
delete_option('dblocks_editor_automatic_layout');
delete_site_option('dblocks_editor_automatic_layout');
delete_option('dblocks_editor_copy_button_text');
delete_site_option('dblocks_editor_copy_button_text');
delete_option('dblocks_editor_copy_button_position');
delete_site_option('dblocks_editor_copy_button_position');
delete_option('dblocks_syntax_copy_button');
delete_site_option('dblocks_syntax_copy_button');

