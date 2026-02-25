<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gts_addtopost_top_enabled');
delete_site_option('gts_addtopost_top_enabled');
delete_option('gts_addtopost_top');
delete_site_option('gts_addtopost_top');
delete_option('gts_addtopost_bottom_enabled');
delete_site_option('gts_addtopost_bottom_enabled');
delete_option('gts_addtopost_bottom');
delete_site_option('gts_addtopost_bottom');

