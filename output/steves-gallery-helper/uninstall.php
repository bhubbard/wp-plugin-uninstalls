<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('steves_gallery_helper_license_key');
delete_site_option('steves_gallery_helper_license_key');
delete_option('steves_gallery_helper_license_status');
delete_site_option('steves_gallery_helper_license_status');

