<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloudguard_options');
delete_site_option('cloudguard_options');
delete_option('cloudguard_blocked_attempts');
delete_site_option('cloudguard_blocked_attempts');
delete_option('cloudguard_nag');
delete_site_option('cloudguard_nag');

