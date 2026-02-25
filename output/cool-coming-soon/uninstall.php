<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cool_coming_soon_data');
delete_site_option('cool_coming_soon_data');
delete_option('cool_coming_soon_display');
delete_site_option('cool_coming_soon_display');

// Delete Transients
delete_transient('ccs_cool_coming_soon_activation_redirect');
delete_site_transient('ccs_cool_coming_soon_activation_redirect');

