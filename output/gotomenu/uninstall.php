<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtmsk_enable_frontend');
delete_site_option('gtmsk_enable_frontend');
delete_option('gtmsk_enable_backend');
delete_site_option('gtmsk_enable_backend');

// Delete Transients
delete_transient('gtmsk_activation_notice');
delete_site_transient('gtmsk_activation_notice');

