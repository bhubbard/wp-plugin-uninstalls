<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myprefix_image_id');
delete_site_option('myprefix_image_id');
delete_option('koptional_scrolling_overlays_db_version');
delete_site_option('koptional_scrolling_overlays_db_version');

