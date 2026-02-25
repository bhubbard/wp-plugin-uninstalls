<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynatafo_activation_data');
delete_site_option('dynatafo_activation_data');

// Delete Transients
delete_transient('dynatafo_admin_notice');
delete_site_transient('dynatafo_admin_notice');

