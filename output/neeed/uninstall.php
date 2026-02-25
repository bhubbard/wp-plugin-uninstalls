<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neeed_api_key');
delete_site_option('neeed_api_key');
delete_option('neeed_art_display');
delete_site_option('neeed_art_display');

