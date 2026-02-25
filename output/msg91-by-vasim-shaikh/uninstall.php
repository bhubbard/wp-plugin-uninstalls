<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zt_msg91_authtoken');
delete_site_option('zt_msg91_authtoken');
delete_option('zt_msg91_country');
delete_site_option('zt_msg91_country');
delete_option('zt_msg91_sender_name');
delete_site_option('zt_msg91_sender_name');
delete_option('zt_msg91_msgtxt');
delete_site_option('zt_msg91_msgtxt');
delete_option('zt_msg91_route');
delete_site_option('zt_msg91_route');

