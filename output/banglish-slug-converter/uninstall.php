<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbsc_custom_mappings');
delete_site_option('sbsc_custom_mappings');
delete_option('sbsc_settings');
delete_site_option('sbsc_settings');

// Delete Transients
delete_transient('sbsc_activation_notice');
delete_site_transient('sbsc_activation_notice');

