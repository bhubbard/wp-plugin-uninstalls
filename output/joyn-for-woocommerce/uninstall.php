<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('joyn_api_key');
delete_site_option('joyn_api_key');
delete_option('joyn_show_on_thankyou');
delete_site_option('joyn_show_on_thankyou');
delete_option('joyn_show_on_order');
delete_site_option('joyn_show_on_order');
delete_option('joyn_show_in_mail');
delete_site_option('joyn_show_in_mail');

