<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customizer_options');
delete_site_option('customizer_options');
delete_option('customizer_array');
delete_site_option('customizer_array');

