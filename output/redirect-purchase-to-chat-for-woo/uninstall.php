<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpwpp_enabled');
delete_site_option('rpwpp_enabled');
delete_option('rpwpp_phone_number');
delete_site_option('rpwpp_phone_number');
delete_option('rpwpp_custom_message');
delete_site_option('rpwpp_custom_message');
delete_option('rpwpp_button_text');
delete_site_option('rpwpp_button_text');

