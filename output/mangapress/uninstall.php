<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mangapress_upgrade');
delete_site_option('mangapress_upgrade');
delete_option('mangapress_options');
delete_site_option('mangapress_options');
delete_option('mangapress_ver');
delete_site_option('mangapress_ver');
delete_option('mangapress_default_category');
delete_site_option('mangapress_default_category');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('mangapress_db_ver');
delete_site_option('mangapress_db_ver');

// Delete Transients
delete_transient('mangapress_random_comics');
delete_site_transient('mangapress_random_comics');

