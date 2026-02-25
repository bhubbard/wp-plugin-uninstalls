<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rapidpress_options');
delete_site_option('rapidpress_options');
delete_option('rapidpress_version');
delete_site_option('rapidpress_version');

// Delete Transients
delete_transient('rapidpress_activation_notice');
delete_site_transient('rapidpress_activation_notice');

