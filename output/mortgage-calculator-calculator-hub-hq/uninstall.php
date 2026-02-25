<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mortgage_default_heading');
delete_site_option('mortgage_default_heading');
delete_option('mortgage_heading_color');
delete_site_option('mortgage_heading_color');
delete_option('mortgage_button_color');
delete_site_option('mortgage_button_color');

