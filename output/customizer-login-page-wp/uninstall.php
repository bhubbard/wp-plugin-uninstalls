<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clpwp-primary-color');
delete_site_option('clpwp-primary-color');
delete_option('clpwp-sec-color');
delete_site_option('clpwp-sec-color');
delete_option('clpwp-logo-image-url');
delete_site_option('clpwp-logo-image-url');
delete_option('clpwp-custom-bg-image');
delete_site_option('clpwp-custom-bg-image');
delete_option('clpwp-custom-bg-brightness');
delete_site_option('clpwp-custom-bg-brightness');
delete_option('clpwp_plugin_do_activation_redirect');
delete_site_option('clpwp_plugin_do_activation_redirect');

