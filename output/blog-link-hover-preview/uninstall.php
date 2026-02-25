<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blhp_bg_color');
delete_site_option('blhp_bg_color');
delete_option('blhp_title_color');
delete_site_option('blhp_title_color');
delete_option('blhp_excerpt_color');
delete_site_option('blhp_excerpt_color');
delete_option('blhp_link_color');
delete_site_option('blhp_link_color');

