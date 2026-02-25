<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7vp_enable_phone');
delete_site_option('cf7vp_enable_phone');
delete_option('cf7vp_enable_email');
delete_site_option('cf7vp_enable_email');
delete_option('cf7vp_enable_urlblock');
delete_site_option('cf7vp_enable_urlblock');
delete_option('cf7vp_enable_urlblock_all');
delete_site_option('cf7vp_enable_urlblock_all');
delete_option('cf7vp_phone_digits');
delete_site_option('cf7vp_phone_digits');
delete_option('cf7vp_phone_message');
delete_site_option('cf7vp_phone_message');
delete_option('cf7vp_email_message');
delete_site_option('cf7vp_email_message');
delete_option('cf7vp_url_message');
delete_site_option('cf7vp_url_message');

