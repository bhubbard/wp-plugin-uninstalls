<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boei_key_option');
delete_site_option('boei_key_option');

// Delete Transients
delete_transient('boei_just_connected');
delete_site_transient('boei_just_connected');
delete_transient('boei_activation_notice');
delete_site_transient('boei_activation_notice');

