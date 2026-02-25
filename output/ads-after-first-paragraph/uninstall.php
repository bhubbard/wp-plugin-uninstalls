<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fiAdd_adsID');
delete_site_option('fiAdd_adsID');
delete_option('fiAdd_adsLeftID');
delete_site_option('fiAdd_adsLeftID');
delete_option('fiAdd_adsRightID');
delete_site_option('fiAdd_adsRightID');

