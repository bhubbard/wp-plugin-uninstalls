<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lws_aff_apikey');
delete_site_option('lws_aff_apikey');
delete_option('lwsaff_do_not_ask_again');
delete_site_option('lwsaff_do_not_ask_again');

// Delete Transients
delete_transient('lwsaff_remind_me');
delete_site_transient('lwsaff_remind_me');
delete_transient('lws_aff_banners');
delete_site_transient('lws_aff_banners');
delete_transient('lws_aff_banner');
delete_site_transient('lws_aff_banner');

