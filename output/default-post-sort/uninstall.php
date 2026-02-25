<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_post_sort');
delete_site_option('default_post_sort');
delete_option('default_post_order');
delete_site_option('default_post_order');

