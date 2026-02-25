<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slideshow-category-id');
delete_site_option('slideshow-category-id');
delete_option('slideshow-post-number');
delete_site_option('slideshow-post-number');
delete_option('order-posts');
delete_site_option('order-posts');
delete_option('sort-posts');
delete_site_option('sort-posts');
delete_option('slideshow-text-length');
delete_site_option('slideshow-text-length');
delete_option('slideshow-auto');
delete_site_option('slideshow-auto');
delete_option('slideshow-speed');
delete_site_option('slideshow-speed');
delete_option('slideshow-duration');
delete_site_option('slideshow-duration');
delete_option('slideshow-vertical');
delete_site_option('slideshow-vertical');
delete_option('slideshow-continous');
delete_site_option('slideshow-continous');
delete_option('slideshow-width');
delete_site_option('slideshow-width');
delete_option('slideshow-height');
delete_site_option('slideshow-height');
delete_option('slideshow-button');
delete_site_option('slideshow-button');
delete_option('slideshow-border-width');
delete_site_option('slideshow-border-width');
delete_option('slideshow-border-color');
delete_site_option('slideshow-border-color');
delete_option('slideshow-text-font');
delete_site_option('slideshow-text-font');
delete_option('slideshow-title-font-size');
delete_site_option('slideshow-title-font-size');
delete_option('slideshow-title-font-color');
delete_site_option('slideshow-title-font-color');
delete_option('slideshow-title-font-color-hover');
delete_site_option('slideshow-title-font-color-hover');
delete_option('slideshow-text-font-size');
delete_site_option('slideshow-text-font-size');
delete_option('slideshow-text-font-color');
delete_site_option('slideshow-text-font-color');

