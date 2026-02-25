<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cubm_color');
delete_site_option('cubm_color');
delete_option('cubm_call');
delete_site_option('cubm_call');
delete_option('cubm_email');
delete_site_option('cubm_email');
delete_option('cubm_sms');
delete_site_option('cubm_sms');

