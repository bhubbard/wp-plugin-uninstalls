<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_wp_chat_integration_settings');
delete_site_option('easy_wp_chat_integration_settings');

