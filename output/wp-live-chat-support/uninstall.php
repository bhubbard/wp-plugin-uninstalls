<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplc_activated');
delete_site_option('wplc_activated');
delete_option('wplc_callback_nonce');
delete_site_option('wplc_callback_nonce');
delete_option('wplc_display_options');
delete_site_option('wplc_display_options');

