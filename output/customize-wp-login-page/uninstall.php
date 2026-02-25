<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwlp-primary-color');
delete_site_option('cwlp-primary-color');
delete_option('cwlp-secondary-color');
delete_site_option('cwlp-secondary-color');
delete_option('cwlp-login-logo');
delete_site_option('cwlp-login-logo');
delete_option('login-background-image');
delete_site_option('login-background-image');
delete_option('cwlp-logo-brightness');
delete_site_option('cwlp-logo-brightness');
delete_option('cwlp_plugin_do_activation_redirect');
delete_site_option('cwlp_plugin_do_activation_redirect');

