<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spotify-play-button-for-wordpress-link');
delete_site_option('spotify-play-button-for-wordpress-link');
delete_option('spotify-play-button-for-wordpress-default');
delete_site_option('spotify-play-button-for-wordpress-default');
delete_option('spotify-play-button-for-wordpress-size');
delete_site_option('spotify-play-button-for-wordpress-size');

