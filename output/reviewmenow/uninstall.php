<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_placeId');
delete_site_option('google_placeId');
delete_option('reviewme_logo_display');
delete_site_option('reviewme_logo_display');
delete_option('google_review_clientId');
delete_site_option('google_review_clientId');

