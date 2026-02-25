<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srizon_flickr_auth_data');
delete_site_option('srizon_flickr_auth_data');

