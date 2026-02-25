<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('senm7s_logs');
delete_site_option('senm7s_logs');
delete_option('senm7s_settings');
delete_site_option('senm7s_settings');

