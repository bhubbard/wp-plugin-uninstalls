<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parcello_token');
delete_site_option('parcello_token');
delete_option('parcello_tracking_page');
delete_site_option('parcello_tracking_page');
delete_option('parcello_tracking_method');
delete_site_option('parcello_tracking_method');
delete_option('parcello_tracking_carrier_field');
delete_site_option('parcello_tracking_carrier_field');
delete_option('parcello_tracking_id_field');
delete_site_option('parcello_tracking_id_field');

