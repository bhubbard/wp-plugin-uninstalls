<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsfyt_application_key');
delete_site_option('hsfyt_application_key');
delete_option('hsfyt_application_secret');
delete_site_option('hsfyt_application_secret');
delete_option('hsfyt_access_token');
delete_site_option('hsfyt_access_token');
delete_option('hsfyt_access_token_secret');
delete_site_option('hsfyt_access_token_secret');
delete_option('hsfyt_user_screenname');
delete_site_option('hsfyt_user_screenname');

