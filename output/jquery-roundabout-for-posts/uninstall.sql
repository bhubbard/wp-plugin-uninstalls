-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprabt_show_posts', 'wprabt_post_category', 'wprabt_order_posts', 'wprabt_slider_mode', 'wprabt_post_link', 'wprabt_img_width', 'wprabt_img_height');

