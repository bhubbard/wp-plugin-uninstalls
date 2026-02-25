<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afnk_blocked_phone_numbers');
delete_site_option('afnk_blocked_phone_numbers');
delete_option('afnk_blocked_phone_attempts');
delete_site_option('afnk_blocked_phone_attempts');

