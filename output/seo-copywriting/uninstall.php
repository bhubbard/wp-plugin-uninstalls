<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_copy_do_activation_redirect');
delete_site_option('seo_copy_do_activation_redirect');
delete_option('sc_api_key');
delete_site_option('sc_api_key');
delete_option('seocopy_apikey_setting');
delete_site_option('seocopy_apikey_setting');
delete_option('seocopy_language');
delete_site_option('seocopy_language');
delete_option('wp_seo_plugins_user_display_name');
delete_site_option('wp_seo_plugins_user_display_name');
delete_option('wp_seo_plugins_user_email');
delete_site_option('wp_seo_plugins_user_email');

