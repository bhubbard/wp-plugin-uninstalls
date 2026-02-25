-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdfjs_notice_key', 'pdfjs_notice_version', 'pdfjs_download_button', 'pdfjs_print_button', 'pdfjs_search_button', 'pdfjs_editing_buttons', 'pdfjs_fullscreen_link', 'pdfjs_fullscreen_link_text', 'pdfjs_fullscreen_link_target', 'pdfjs_embed_height', 'pdfjs_embed_width', 'pdfjs_viewer_scale', 'pdfjs_viewer_pagemode', 'pdfjs_custom_page');
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_download_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_print_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_openfile_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_zoom_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_pagemode_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_searchbutton_%';
DELETE FROM wp_options WHERE option_name LIKE 'pdfjs_button_editingbuttons_%';

