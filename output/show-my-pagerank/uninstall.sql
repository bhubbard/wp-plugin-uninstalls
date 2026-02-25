-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_pagerank_picture_width', 'my_pagerank_text_color', 'my_pagerank_font_size', 'my_pagerank_caption', 'my_pagerank_append_post');

