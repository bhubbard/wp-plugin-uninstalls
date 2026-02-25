<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formstack_forms');
delete_site_option('formstack_forms');
delete_option('formstack_access_token');
delete_site_option('formstack_access_token');
delete_option('formstack_refresh_token');
delete_site_option('formstack_refresh_token');
delete_option('formstack_token_expiration');
delete_site_option('formstack_token_expiration');
delete_option('formstack_form_count');
delete_site_option('formstack_form_count');
delete_option('formstack_settings');
delete_site_option('formstack_settings');
delete_option('formstack_client_id');
delete_site_option('formstack_client_id');
delete_option('formstack_client_secret');
delete_site_option('formstack_client_secret');
delete_option('formstack_oauth2_code');
delete_site_option('formstack_oauth2_code');

