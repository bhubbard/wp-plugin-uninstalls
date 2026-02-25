<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_math_size');
delete_site_option('wp_math_size');
delete_option('wp_math_mail');
delete_site_option('wp_math_mail');
delete_option('wp_math_only_mail');
delete_site_option('wp_math_only_mail');
delete_option('wp_math_round');
delete_site_option('wp_math_round');
delete_option('wp_math_static');
delete_site_option('wp_math_static');

