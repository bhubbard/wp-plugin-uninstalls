<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('soundcite_soundcloud_client_id');
delete_site_option('soundcite_soundcloud_client_id');
delete_option('soundcite_background_color');
delete_site_option('soundcite_background_color');

