<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('songkick-concerts');
delete_site_option('songkick-concerts');
delete_option('songkick-concerts-cache');
delete_site_option('songkick-concerts-cache');

