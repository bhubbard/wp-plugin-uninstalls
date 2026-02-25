-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ig_posts_carousel_option_name', 'ig_post_carousel_widget_img_width', 'ig_post_carousel_widget_img_heigth');

