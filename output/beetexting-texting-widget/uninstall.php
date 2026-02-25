<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secondary_color');
delete_site_option('secondary_color');
delete_option('footer_text');
delete_site_option('footer_text');
delete_option('phone_number');
delete_site_option('phone_number');
delete_option('primary_color');
delete_site_option('primary_color');
delete_option('wpbt-update-setting');
delete_site_option('wpbt-update-setting');

