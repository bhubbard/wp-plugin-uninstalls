<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stb_mami_settings');
delete_site_option('stb_mami_settings');

// Delete Transients
delete_transient('stb_mami_example_transient_for_activation_message');
delete_site_transient('stb_mami_example_transient_for_activation_message');

