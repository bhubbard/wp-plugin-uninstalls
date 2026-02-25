<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbaofsbc_weight_addon_enabled');
delete_site_option('wbaofsbc_weight_addon_enabled');

