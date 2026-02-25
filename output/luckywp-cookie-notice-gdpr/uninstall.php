<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwpcng_general');
delete_site_option('lwpcng_general');
delete_option('lwpcng_appearance');
delete_site_option('lwpcng_appearance');
delete_option('lwpcng_scripts');
delete_site_option('lwpcng_scripts');
delete_option('lwpcng_advanced');
delete_site_option('lwpcng_advanced');
delete_option('lwpcng_rate_time');
delete_site_option('lwpcng_rate_time');

