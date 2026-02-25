<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('benribot_widget_embedded');
delete_site_option('benribot_widget_embedded');
delete_option('benribot_client_key');
delete_site_option('benribot_client_key');
delete_option('benribot_connected');
delete_site_option('benribot_connected');
delete_option('benribot_oauth_state');
delete_site_option('benribot_oauth_state');
delete_option('benribot_secret_key');
delete_site_option('benribot_secret_key');
delete_option('benribot_consumer_key');
delete_site_option('benribot_consumer_key');
delete_option('benribot_consumer_secret');
delete_site_option('benribot_consumer_secret');
delete_option('benribot_wc_api_key_id');
delete_site_option('benribot_wc_api_key_id');

