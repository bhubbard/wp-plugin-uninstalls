<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hps_enabled');
delete_site_option('hps_enabled');
delete_option('hps_posts_order');
delete_site_option('hps_posts_order');

