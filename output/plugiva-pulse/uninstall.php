<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppls_pulses');
delete_site_option('ppls_pulses');
delete_option('ppls_cleanup_on_uninstall');
delete_site_option('ppls_cleanup_on_uninstall');

