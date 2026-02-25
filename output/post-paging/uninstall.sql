-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_paging_background_color_transparent', 'post_paging_background_color', 'post_paging_use_image', 'post_paging_show_title', 'post_paging_prev_post_text', 'post_paging_next_post_text', 'post_paging_images_width', 'post_paging_prev_post_image', 'post_paging_next_post_image', 'post_paging_position', 'post_paging_hover_color', 'post_paging_text_decoration', 'post_paging_text_color', 'post_paging_font_family', 'post_paging_font_size');

