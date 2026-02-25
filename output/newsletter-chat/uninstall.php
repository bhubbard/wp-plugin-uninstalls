<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posts_title');
delete_site_option('posts_title');
delete_option('posts_footer');
delete_site_option('posts_footer');
delete_option('nw_cng');
delete_site_option('nw_cng');
delete_option('nw_lng');
delete_site_option('nw_lng');

