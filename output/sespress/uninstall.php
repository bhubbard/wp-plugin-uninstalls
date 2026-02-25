<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sespress_enable_emails');
delete_site_option('sespress_enable_emails');
delete_option('sespress_aws_access_key_id');
delete_site_option('sespress_aws_access_key_id');
delete_option('sespress_aws_secret_access_key');
delete_site_option('sespress_aws_secret_access_key');
delete_option('sespress_region');
delete_site_option('sespress_region');
delete_option('sespress_default_sender');
delete_site_option('sespress_default_sender');
delete_option('sespress_test_mode');
delete_site_option('sespress_test_mode');
delete_option('sespress_test_mode_recipient_name');
delete_site_option('sespress_test_mode_recipient_name');
delete_option('sespress_test_mode_recipient_email');
delete_site_option('sespress_test_mode_recipient_email');

