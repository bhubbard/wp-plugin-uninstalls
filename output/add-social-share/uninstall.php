<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsocial-enable-plugin');
delete_site_option('wpsocial-enable-plugin');
delete_option('wpsocial-enable-post');
delete_site_option('wpsocial-enable-post');
delete_option('wpsocial-enable-page');
delete_site_option('wpsocial-enable-page');
delete_option('wpsocial-enable-home');
delete_site_option('wpsocial-enable-home');
delete_option('wpsocial-message-selection');
delete_site_option('wpsocial-message-selection');
delete_option('wpsocial-custom-message');
delete_site_option('wpsocial-custom-message');
delete_option('wpsocial-positioning');
delete_site_option('wpsocial-positioning');
delete_option('wpsocial-alignment');
delete_site_option('wpsocial-alignment');
delete_option('wpsocial-facebook');
delete_site_option('wpsocial-facebook');
delete_option('wpsocial-twitter');
delete_site_option('wpsocial-twitter');
delete_option('wpsocial-google');
delete_site_option('wpsocial-google');
delete_option('wpsocial-linkedin');
delete_site_option('wpsocial-linkedin');
delete_option('wpsocial-pinterest');
delete_site_option('wpsocial-pinterest');
delete_option('wpsocial-skins');
delete_site_option('wpsocial-skins');

