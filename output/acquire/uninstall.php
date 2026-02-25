<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acquire_plugin_status');
delete_site_option('acquire_plugin_status');
delete_option('acquire_wp_live_chat_widget');
delete_site_option('acquire_wp_live_chat_widget');
delete_option('acquire_user_account_ID');
delete_site_option('acquire_user_account_ID');

