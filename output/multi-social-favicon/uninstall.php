<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fav_id');
delete_site_option('fav_id');
delete_option('fav_order');
delete_site_option('fav_order');

