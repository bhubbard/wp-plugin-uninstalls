<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cs-category');
delete_site_option('cs-category');
delete_option('cs-items');
delete_site_option('cs-items');
delete_option('cs-image');
delete_site_option('cs-image');
delete_option('cs-text');
delete_site_option('cs-text');
delete_option('cs-effect');
delete_site_option('cs-effect');
delete_option('cs-spw');
delete_site_option('cs-spw');
delete_option('cs-sph');
delete_site_option('cs-sph');
delete_option('cs-width');
delete_site_option('cs-width');
delete_option('cs-height');
delete_site_option('cs-height');
delete_option('cs-delay');
delete_site_option('cs-delay');
delete_option('cs-navigation');
delete_site_option('cs-navigation');

