<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aasrp_admin_init');
delete_site_option('aasrp_admin_init');
delete_option('aasrp_admin_actions');
delete_site_option('aasrp_admin_actions');
delete_option('aasrp_tracking_id');
delete_site_option('aasrp_tracking_id');

