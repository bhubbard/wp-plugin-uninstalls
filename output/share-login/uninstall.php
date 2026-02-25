<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slogin_outgoing_logout');
delete_site_option('slogin_outgoing_logout');
delete_option('slogin_outgoing_user_creation');
delete_site_option('slogin_outgoing_user_creation');
delete_option('slogin_main_site_secret_key');
delete_site_option('slogin_main_site_secret_key');
delete_option('slogin_setup_complete');
delete_site_option('slogin_setup_complete');
delete_option('slogin_sitetype');
delete_site_option('slogin_sitetype');
delete_option('slogin_incomming_logout');
delete_site_option('slogin_incomming_logout');
delete_option('slogin_incomming_user_creation');
delete_site_option('slogin_incomming_user_creation');
delete_option('slogin_main_site_url');
delete_site_option('slogin_main_site_url');
delete_option('slogin_sync_site_url');
delete_site_option('slogin_sync_site_url');

