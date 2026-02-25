-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fig_downloaded', 'fig_unsplash_api', 'fig_thumb_defaut_size_width', 'fig_thumb_defaut_size_height', 'fig_font_family', 'fig_pixabay_api', 'fig_pixabay_safesearch', 'fig_post_type');

