<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ac_custom_pupup_message');
delete_site_option('ac_custom_pupup_message');
delete_option('ac_pupup_message_display_time');
delete_site_option('ac_pupup_message_display_time');

