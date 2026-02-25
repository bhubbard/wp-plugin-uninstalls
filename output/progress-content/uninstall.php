<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('progcontent_color_bar');
delete_site_option('progcontent_color_bar');
delete_option('progcontent_post_type_bar');
delete_site_option('progcontent_post_type_bar');
delete_option('progcontent_height_bar');
delete_site_option('progcontent_height_bar');
delete_option('progcontent_style_bar');
delete_site_option('progcontent_style_bar');

