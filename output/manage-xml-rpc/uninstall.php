<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allow_disallow');
delete_site_option('allow_disallow');
delete_option('allow_disallow_pingback');
delete_site_option('allow_disallow_pingback');

