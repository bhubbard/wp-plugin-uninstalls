<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tidlogin-primary-color');
delete_site_option('tidlogin-primary-color');
delete_option('tidlogin-seconday-color');
delete_site_option('tidlogin-seconday-color');
delete_option('tidlogin-logo-image-url');
delete_site_option('tidlogin-logo-image-url');
delete_option('tidlogin-custom-bg-image');
delete_site_option('tidlogin-custom-bg-image');
delete_option('tidlogin-custom-bg-britness');
delete_site_option('tidlogin-custom-bg-britness');
delete_option('tidlogin_plugin_do_activation_redirect');
delete_site_option('tidlogin_plugin_do_activation_redirect');

