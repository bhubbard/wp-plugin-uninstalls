<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wask');
delete_site_option('wask');
delete_option('wask_facebook_pixel');
delete_site_option('wask_facebook_pixel');
delete_option('wask_google_analytic');
delete_site_option('wask_google_analytic');

