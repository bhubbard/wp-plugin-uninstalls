<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dl_order_boost_settings_v1');
delete_site_option('dl_order_boost_settings_v1');

