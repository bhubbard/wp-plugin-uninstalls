<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptimezone_is_installation_completed');
delete_site_option('uptimezone_is_installation_completed');
delete_option('uptimezone-code');
delete_site_option('uptimezone-code');

