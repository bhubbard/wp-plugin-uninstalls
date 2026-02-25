<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dryleads_flow_id');
delete_site_option('dryleads_flow_id');
delete_option('dryleads_enable_widget');
delete_site_option('dryleads_enable_widget');
delete_option('dryleads_contact_form_7');
delete_site_option('dryleads_contact_form_7');
delete_option('dryleads_city');
delete_site_option('dryleads_city');

