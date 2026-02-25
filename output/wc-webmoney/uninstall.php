<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_webmoney_last_settings_update_version');
delete_site_option('wc_webmoney_last_settings_update_version');
delete_option('woocommerce_webmoney_settings');
delete_site_option('woocommerce_webmoney_settings');

