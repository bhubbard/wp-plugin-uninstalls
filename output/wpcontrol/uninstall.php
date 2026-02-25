<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravatar_substitute');
delete_site_option('gravatar_substitute');
delete_option('wpcontrol_settings');
delete_site_option('wpcontrol_settings');
delete_option('wpcontrol_current_version');
delete_site_option('wpcontrol_current_version');

// Delete Transients
delete_transient('_wpcontrol_activation_redirect');
delete_site_transient('_wpcontrol_activation_redirect');
delete_transient('wpcontrol-admin-notice-activation');
delete_site_transient('wpcontrol-admin-notice-activation');

