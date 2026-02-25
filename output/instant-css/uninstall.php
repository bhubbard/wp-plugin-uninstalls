<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icss_css');
delete_site_option('icss_css');
delete_option('icss_version');
delete_site_option('icss_version');
delete_option('icss_postcss');
delete_site_option('icss_postcss');
delete_option('icss_lang');
delete_site_option('icss_lang');
delete_option('icss_theme');
delete_site_option('icss_theme');
delete_option('icss_preprocessor');
delete_site_option('icss_preprocessor');
delete_option('icss_minify');
delete_site_option('icss_minify');

