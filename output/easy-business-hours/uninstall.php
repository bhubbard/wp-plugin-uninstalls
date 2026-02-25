<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_business_hours');
delete_site_option('easy_business_hours');
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');

