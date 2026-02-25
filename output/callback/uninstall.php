<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('callback_track');
delete_site_option('callback_track');
delete_option('callback_messages');
delete_site_option('callback_messages');
delete_option('callback_settings');
delete_site_option('callback_settings');
delete_option('mailinglist_settings');
delete_site_option('mailinglist_settings');
delete_option('callback_fields');
delete_site_option('callback_fields');

