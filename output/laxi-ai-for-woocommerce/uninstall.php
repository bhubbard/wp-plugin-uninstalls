<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('laxi_chatbot_enabled');
delete_site_option('laxi_chatbot_enabled');
delete_option('laxi_wc_consumer_key');
delete_site_option('laxi_wc_consumer_key');
delete_option('laxi_wc_consumer_secret');
delete_site_option('laxi_wc_consumer_secret');
delete_option('laxi_wc_api_key_id');
delete_site_option('laxi_wc_api_key_id');

