<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('validbot_api_key');
delete_site_option('validbot_api_key');
delete_option('validbot_email');
delete_site_option('validbot_email');
delete_option('validbot_subscriber');
delete_site_option('validbot_subscriber');

