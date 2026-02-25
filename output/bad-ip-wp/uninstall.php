<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bad_ip_blocked');
delete_site_option('bad_ip_blocked');
delete_option('bad_ip_last_upgrade');
delete_site_option('bad_ip_last_upgrade');

// Delete Transients
delete_transient('bad_ip_activated');
delete_site_transient('bad_ip_activated');
delete_transient('bad_ip_updated');
delete_site_transient('bad_ip_updated');

