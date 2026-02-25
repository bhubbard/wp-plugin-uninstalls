<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catch_under_construction_options');
delete_site_option('catch_under_construction_options');
delete_option('ctp_options');
delete_site_option('ctp_options');

// Delete Transients
delete_transient('_catch_coming_soon_screen_activation_redirect');
delete_site_transient('_catch_coming_soon_screen_activation_redirect');

