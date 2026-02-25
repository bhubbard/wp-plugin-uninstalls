<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disablegeneratethumbnails_threshold');
delete_site_option('disablegeneratethumbnails_threshold');
delete_option('disablegeneratethumbnails_exif_rotate');
delete_site_option('disablegeneratethumbnails_exif_rotate');
delete_option('disablegeneratethumbnails');
delete_site_option('disablegeneratethumbnails');

