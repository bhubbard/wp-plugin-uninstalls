<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fwebmanifest_description');
delete_site_option('fwebmanifest_description');
delete_option('fwebmanifest_start_url');
delete_site_option('fwebmanifest_start_url');
delete_option('fwebmanifest_display');
delete_site_option('fwebmanifest_display');
delete_option('fwebmanifest_orientation');
delete_site_option('fwebmanifest_orientation');
delete_option('fwebmanifest_name');
delete_site_option('fwebmanifest_name');
delete_option('fwebmanifest_short_name');
delete_site_option('fwebmanifest_short_name');
delete_option('fwebmanifest_lang');
delete_site_option('fwebmanifest_lang');
delete_option('fwebmanifest_dir');
delete_site_option('fwebmanifest_dir');
delete_option('fwebmanifest_bgcolor');
delete_site_option('fwebmanifest_bgcolor');
delete_option('fwebmanifest_themecolor');
delete_site_option('fwebmanifest_themecolor');

