<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftfeatured-width');
delete_site_option('ftfeatured-width');
delete_option('ftfeatured-navigationno');
delete_site_option('ftfeatured-navigationno');
delete_option('ftfeatured-category');
delete_site_option('ftfeatured-category');
delete_option('ftfeatured-items');
delete_site_option('ftfeatured-items');
delete_option('ftfeatured-image');
delete_site_option('ftfeatured-image');
delete_option('ftfeatured-text');
delete_site_option('ftfeatured-text');
delete_option('ftfeatured-effect');
delete_site_option('ftfeatured-effect');
delete_option('ftfeatured-stripes');
delete_site_option('ftfeatured-stripes');
delete_option('ftfeatured-height');
delete_site_option('ftfeatured-height');
delete_option('ftfeatured-delay');
delete_site_option('ftfeatured-delay');
delete_option('ftfeatured-navigation');
delete_site_option('ftfeatured-navigation');

