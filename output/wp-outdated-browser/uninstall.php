<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('background-color');
delete_site_option('background-color');
delete_option('font-color');
delete_site_option('font-color');
delete_option('browser');
delete_site_option('browser');
delete_option('language');
delete_site_option('language');

