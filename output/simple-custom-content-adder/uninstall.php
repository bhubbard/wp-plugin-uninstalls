<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scca_content');
delete_site_option('scca_content');
delete_option('scca_background_color');
delete_site_option('scca_background_color');
delete_option('scca_font_color');
delete_site_option('scca_font_color');
delete_option('scca_font_size');
delete_site_option('scca_font_size');
delete_option('scca_padding');
delete_site_option('scca_padding');
delete_option('scca_border_color');
delete_site_option('scca_border_color');
delete_option('scca_border_width');
delete_site_option('scca_border_width');
delete_option('scca_rounded_corners');
delete_site_option('scca_rounded_corners');
delete_option('scca_before_or_after');
delete_site_option('scca_before_or_after');
delete_option('scca_posts_or_pages');
delete_site_option('scca_posts_or_pages');

