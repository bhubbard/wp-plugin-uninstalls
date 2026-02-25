<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paack_testing');
delete_site_option('paack_testing');
delete_option('api_token');
delete_site_option('api_token');
delete_option('store_id');
delete_site_option('store_id');
delete_option('is_store_valid');
delete_site_option('is_store_valid');
delete_option('text_popup');
delete_site_option('text_popup');
delete_option('zip_codes');
delete_site_option('zip_codes');
delete_option('paack_message_zip_code_success');
delete_site_option('paack_message_zip_code_success');
delete_option('paack_message_zip_code_error');
delete_site_option('paack_message_zip_code_error');

