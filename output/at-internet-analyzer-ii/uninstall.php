<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xtsd_value');
delete_site_option('xtsd_value');
delete_option('xtsite_value');
delete_site_option('xtsite_value');
delete_option('xtdmc_value');
delete_site_option('xtdmc_value');
delete_option('homepage_ergo');
delete_site_option('homepage_ergo');
delete_option('posts_ergo');
delete_site_option('posts_ergo');
delete_option('pages_ergo');
delete_site_option('pages_ergo');

