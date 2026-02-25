<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lottiefiles_activation_redirect');
delete_site_option('lottiefiles_activation_redirect');
delete_option('lottie_config_admin');
delete_site_option('lottie_config_admin');
delete_option('lottiefiles_options');
delete_site_option('lottiefiles_options');

