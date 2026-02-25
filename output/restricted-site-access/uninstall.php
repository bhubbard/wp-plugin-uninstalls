<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsa_hide_page_cache_notice');
delete_site_option('rsa_hide_page_cache_notice');
delete_option('rsa_options');
delete_site_option('rsa_options');
delete_option('rsa_mode');
delete_site_option('rsa_mode');
delete_option('rsa_activation_version');
delete_site_option('rsa_activation_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

