<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urev_allowed_email_types');
delete_site_option('urev_allowed_email_types');
delete_option('urev_access_key_status');
delete_site_option('urev_access_key_status');
delete_option('urev_access_key_status_color');
delete_site_option('urev_access_key_status_color');
delete_option('urev_access_key');
delete_site_option('urev_access_key');
delete_option('urev_block_on_error');
delete_site_option('urev_block_on_error');

