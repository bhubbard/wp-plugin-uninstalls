<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobile_noi');
delete_site_option('mobile_noi');
delete_option('tablet_noi');
delete_site_option('tablet_noi');
delete_option('desktop_noi');
delete_site_option('desktop_noi');
delete_option('ch_arrows');
delete_site_option('ch_arrows');
delete_option('ch_dots');
delete_site_option('ch_dots');
delete_option('font_size');
delete_site_option('font_size');
delete_option('carousel_padding');
delete_site_option('carousel_padding');
delete_option('top_arrows');
delete_site_option('top_arrows');

