-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fontface-load-css-in-tinymce', 'fontface-load-css-style-in-tinymce', 'fontface-load-in-admin', 'fontface-generate-css-class', 'fontface_font_list_count', 'fontface-css', 'fontface_font_list');

