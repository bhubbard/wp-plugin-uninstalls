<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixelshop_key');
delete_site_option('pixelshop_key');
delete_option('pixelshop_message');
delete_site_option('pixelshop_message');
delete_option('pxs_last_export');
delete_site_option('pxs_last_export');
delete_option('pixelshop_id');
delete_site_option('pixelshop_id');

