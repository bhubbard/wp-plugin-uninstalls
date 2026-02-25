<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hidsf_blocked_today');
delete_site_option('hidsf_blocked_today');
delete_option('hidsf_is_permalink_updated');
delete_site_option('hidsf_is_permalink_updated');

