<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bzwps_min_password_length');
delete_site_option('bzwps_min_password_length');
delete_option('bzwps_min_numeric_chars');
delete_site_option('bzwps_min_numeric_chars');
delete_option('bzwps_min_special_chars');
delete_site_option('bzwps_min_special_chars');

