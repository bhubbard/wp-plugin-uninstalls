<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recaptcha_flavor');
delete_site_option('recaptcha_flavor');
delete_option('recaptcha_theme');
delete_site_option('recaptcha_theme');
delete_option('recaptcha_disable_submit');
delete_site_option('recaptcha_disable_submit');
delete_option('recaptcha_noscript');
delete_site_option('recaptcha_noscript');
delete_option('recaptcha_comment_use_42_filter');
delete_site_option('recaptcha_comment_use_42_filter');
delete_option('recaptcha_publickey');
delete_site_option('recaptcha_publickey');
delete_option('recaptcha_privatekey');
delete_site_option('recaptcha_privatekey');
delete_option('recaptcha_language');
delete_site_option('recaptcha_language');
delete_option('recaptcha_enable_comments');
delete_site_option('recaptcha_enable_comments');
delete_option('recaptcha_enable_signup');
delete_site_option('recaptcha_enable_signup');
delete_option('recaptcha_enable_login');
delete_site_option('recaptcha_enable_login');
delete_option('recaptcha_enable_lostpw');
delete_site_option('recaptcha_enable_lostpw');
delete_option('recaptcha_disable_for_known_users');
delete_site_option('recaptcha_disable_for_known_users');
delete_option('recaptcha_lockout');
delete_site_option('recaptcha_lockout');
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('recaptcha_enable_wc_checkout');
delete_site_option('recaptcha_enable_wc_checkout');
delete_option('recaptcha_enable_wc_order');
delete_site_option('recaptcha_enable_wc_order');
delete_option('recaptcha_enable_as_registration');
delete_site_option('recaptcha_enable_as_registration');
delete_option('recaptcha_enable_bbp_topic');
delete_site_option('recaptcha_enable_bbp_topic');
delete_option('recaptcha_enable_bbp_reply');
delete_site_option('recaptcha_enable_bbp_reply');

// Delete Transients
delete_transient('recaptcha_keys_okay');
delete_site_transient('recaptcha_keys_okay');

