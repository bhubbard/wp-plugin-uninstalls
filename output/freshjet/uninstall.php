<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('options_freshjet__api_key');
delete_site_option('options_freshjet__api_key');
delete_option('options_freshjet__secret_key');
delete_site_option('options_freshjet__secret_key');
delete_option('options_freshjet__sender_name');
delete_site_option('options_freshjet__sender_name');
delete_option('options_freshjet__sender_email');
delete_site_option('options_freshjet__sender_email');

