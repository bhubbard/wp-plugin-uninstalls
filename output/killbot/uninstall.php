<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('killbot_api_token');
delete_site_option('killbot_api_token');
delete_option('killbot_settings');
delete_site_option('killbot_settings');

