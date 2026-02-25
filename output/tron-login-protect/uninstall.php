<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tron_login_protect_pin');
delete_site_option('tron_login_protect_pin');
delete_option('tron_login_protect_notify');
delete_site_option('tron_login_protect_notify');
delete_option('tron_login_options_r');
delete_site_option('tron_login_options_r');

// Delete Transients
delete_transient('tron_login_protect_activation_redirect');
delete_site_transient('tron_login_protect_activation_redirect');

