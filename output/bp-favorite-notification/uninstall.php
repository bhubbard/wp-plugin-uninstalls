<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb-bp-fav-notification-version');
delete_site_option('wb-bp-fav-notification-version');
delete_option('wb-bp-fav-notification-updater-id');
delete_site_option('wb-bp-fav-notification-updater-id');

