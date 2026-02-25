<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flyer_image_installed_V002596854');
delete_site_option('flyer_image_installed_V002596854');
delete_option('flyer_image_version_V002596854');
delete_site_option('flyer_image_version_V002596854');
delete_option('flyeri_api_url');
delete_site_option('flyeri_api_url');

