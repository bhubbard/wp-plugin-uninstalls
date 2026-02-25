<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustcaptcha_plugins');
delete_site_option('trustcaptcha_plugins');
delete_option('trustcaptcha_options');
delete_site_option('trustcaptcha_options');
delete_option('trustcaptcha_network_options');
delete_site_option('trustcaptcha_network_options');

// Delete Transients
delete_transient('trustcaptcha_error');
delete_site_transient('trustcaptcha_error');

