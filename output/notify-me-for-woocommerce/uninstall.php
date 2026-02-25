<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nmfw_notifyme_redirect');
delete_site_option('nmfw_notifyme_redirect');
delete_option('nmfw_notifyme_connection');
delete_site_option('nmfw_notifyme_connection');
delete_option('nmfw_notifyme_notice_dismissed');
delete_site_option('nmfw_notifyme_notice_dismissed');
delete_option('wp_notifyme_nmfw_auth');
delete_site_option('wp_notifyme_nmfw_auth');

