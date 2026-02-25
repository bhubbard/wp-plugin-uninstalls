<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ig_posts_carousel_option_name');
delete_site_option('ig_posts_carousel_option_name');
delete_option('ig_post_carousel_widget_img_width');
delete_site_option('ig_post_carousel_widget_img_width');
delete_option('ig_post_carousel_widget_img_heigth');
delete_site_option('ig_post_carousel_widget_img_heigth');

