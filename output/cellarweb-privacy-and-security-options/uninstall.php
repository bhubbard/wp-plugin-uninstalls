<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CWPS_settings');
delete_site_option('CWPS_settings');
delete_option('CWPS_chatbot_content');
delete_site_option('CWPS_chatbot_content');
delete_option('cw_chatbot_block_content');
delete_site_option('cw_chatbot_block_content');

// Delete Transients
delete_transient('attempted_login');
delete_site_transient('attempted_login');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

