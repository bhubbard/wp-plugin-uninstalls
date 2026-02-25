<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('preloader-style');
delete_site_option('preloader-style');
delete_option('preloader-display');
delete_site_option('preloader-display');
delete_option('_flat_preloader');
delete_site_option('_flat_preloader');

