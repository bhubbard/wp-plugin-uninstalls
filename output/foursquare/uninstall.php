<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foursquare-feedURL');
delete_site_option('foursquare-feedURL');
delete_option('foursquare-enableMap');
delete_site_option('foursquare-enableMap');
delete_option('foursquare-numCheckins');
delete_site_option('foursquare-numCheckins');

