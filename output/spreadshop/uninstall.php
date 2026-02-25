<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spreadshopSlug');
delete_site_option('spreadshopSlug');
delete_option('spreadshopToken');
delete_site_option('spreadshopToken');
delete_option('spreadshopOptimizeUrl');
delete_site_option('spreadshopOptimizeUrl');
delete_option('spreadshopMetadata');
delete_site_option('spreadshopMetadata');
delete_option('spreadshopSwipeMenu');
delete_site_option('spreadshopSwipeMenu');
delete_option('spreadshopLoadFonts');
delete_site_option('spreadshopLoadFonts');
delete_option('spreadshopPlatform');
delete_site_option('spreadshopPlatform');
delete_option('spreadshopID');
delete_site_option('spreadshopID');
delete_option('spreadshopLocale');
delete_site_option('spreadshopLocale');
delete_option('spreadshopNaviEntry');
delete_site_option('spreadshopNaviEntry');

