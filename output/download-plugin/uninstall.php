<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('download_plugin_do_activation_redirect');
delete_site_option('download_plugin_do_activation_redirect');
delete_option('dpwap_dismiss_eventprime_promotion');
delete_site_option('dpwap_dismiss_eventprime_promotion');
delete_option('dpwap_dismiss_offer_notice');
delete_site_option('dpwap_dismiss_offer_notice');
delete_option('dpwap_downloads_url');
delete_site_option('dpwap_downloads_url');
delete_option('dpwap_plugins');
delete_site_option('dpwap_plugins');

