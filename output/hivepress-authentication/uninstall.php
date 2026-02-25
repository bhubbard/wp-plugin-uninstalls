<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_user_auth_methods');
delete_site_option('hp_user_auth_methods');
delete_option('hp_facebook_app_id');
delete_site_option('hp_facebook_app_id');
delete_option('hp_google_client_id');
delete_site_option('hp_google_client_id');

