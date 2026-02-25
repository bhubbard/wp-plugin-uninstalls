<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wava_active_flag');
delete_site_option('wava_active_flag');
delete_option('wava_merchant_key_site');
delete_site_option('wava_merchant_key_site');
delete_option('wava_plugin_version');
delete_site_option('wava_plugin_version');

