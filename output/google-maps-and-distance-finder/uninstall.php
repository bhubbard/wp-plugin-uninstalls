<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('company_image');
delete_site_option('company_image');
delete_option('user_image');
delete_site_option('user_image');
delete_option('company_location');
delete_site_option('company_location');

