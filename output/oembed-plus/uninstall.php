<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oembed_facebook_app_id');
delete_site_option('oembed_facebook_app_id');
delete_option('oembed_facebook_app_secret');
delete_site_option('oembed_facebook_app_secret');

