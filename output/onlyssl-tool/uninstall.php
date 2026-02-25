<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onlyssl_maintenance_mode');
delete_site_option('onlyssl_maintenance_mode');
delete_option('onlyssl_custom_message');
delete_site_option('onlyssl_custom_message');
delete_option('onlyssl_logo_url');
delete_site_option('onlyssl_logo_url');
delete_option('onlyssl_image_url');
delete_site_option('onlyssl_image_url');

