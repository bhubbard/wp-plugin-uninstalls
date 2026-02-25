<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('klc_welcome');
delete_site_option('klc_welcome');
delete_option('klc_widget_options');
delete_site_option('klc_widget_options');

// Delete Transients
delete_transient('klc_activation_redirect_transient');
delete_site_transient('klc_activation_redirect_transient');

