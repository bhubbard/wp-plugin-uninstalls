<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpas_admin_bar_settings');
delete_site_option('wpas_admin_bar_settings');

// Delete Transients
delete_transient('_wpas_adminbar_activation_redirect');
delete_site_transient('_wpas_adminbar_activation_redirect');

