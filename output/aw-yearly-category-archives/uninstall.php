<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aw_wp_yca_postcontent');
delete_site_option('aw_wp_yca_postcontent');
delete_option('aw_wp_yca_customhtmlphp');
delete_site_option('aw_wp_yca_customhtmlphp');

