<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elcwg_enable_carousel');
delete_site_option('elcwg_enable_carousel');
delete_option('elcwg_carousel_autoplay');
delete_site_option('elcwg_carousel_autoplay');
delete_option('elcwg_carousel_loop');
delete_site_option('elcwg_carousel_loop');
delete_option('elcwg_carousel_autoplay_delay');
delete_site_option('elcwg_carousel_autoplay_delay');
delete_option('elcwg_text_animation_delay');
delete_site_option('elcwg_text_animation_delay');
delete_option('elcwg_caption_font_size');
delete_site_option('elcwg_caption_font_size');

