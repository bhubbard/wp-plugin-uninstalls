<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tag_myxboxprofile');
delete_site_option('tag_myxboxprofile');
delete_option('gis_myxboxprofile');
delete_site_option('gis_myxboxprofile');
delete_option('srg_myxboxprofile');
delete_site_option('srg_myxboxprofile');
delete_option('hidejs_myxboxprofile');
delete_site_option('hidejs_myxboxprofile');

