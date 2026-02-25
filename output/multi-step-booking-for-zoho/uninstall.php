<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmsb_thank_you_url');
delete_site_option('wpmsb_thank_you_url');
delete_option('wpmsb_api_url');
delete_site_option('wpmsb_api_url');
delete_option('wpmsb_thankyou_url');
delete_site_option('wpmsb_thankyou_url');
delete_option('wpmsb_slots');
delete_site_option('wpmsb_slots');
delete_option('wpmsb_form_type');
delete_site_option('wpmsb_form_type');

