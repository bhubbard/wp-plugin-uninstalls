<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('black_and_white');
delete_site_option('black_and_white');
delete_option('blurred');
delete_site_option('blurred');
delete_option('negative');
delete_site_option('negative');
delete_option('pixelate');
delete_site_option('pixelate');
delete_option('sepia');
delete_site_option('sepia');
delete_option('sharpened');
delete_site_option('sharpened');

