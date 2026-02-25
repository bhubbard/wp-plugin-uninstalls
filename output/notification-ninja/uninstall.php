<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('notification_ninja_do_redirect');
delete_site_transient('notification_ninja_do_redirect');

