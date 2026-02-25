<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alcwp-custom-bg-image');
delete_site_option('alcwp-custom-bg-image');
delete_option('alcwp-logo-image-url');
delete_site_option('alcwp-logo-image-url');
delete_option('login-button-gradient');
delete_site_option('login-button-gradient');
delete_option('alcwp_plugin_do_activation_redirect');
delete_site_option('alcwp_plugin_do_activation_redirect');

