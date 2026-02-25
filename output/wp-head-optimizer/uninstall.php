<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wpho_saved_values');
delete_site_option('_wpho_saved_values');
delete_option('wpho_activated_on');
delete_site_option('wpho_activated_on');
delete_option('wpho_deactivated_on');
delete_site_option('wpho_deactivated_on');

