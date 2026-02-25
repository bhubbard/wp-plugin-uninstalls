<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('biz_things_google_places_id');
delete_site_option('biz_things_google_places_id');
delete_option('biz_things_google_places_search');
delete_site_option('biz_things_google_places_search');
delete_option('biz_things_google_places_placeid');
delete_site_option('biz_things_google_places_placeid');

