<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cardtype_options');
delete_site_option('cardtype_options');
delete_option('remove_pubdate');
delete_site_option('remove_pubdate');
delete_option('copyprotect_options');
delete_site_option('copyprotect_options');
delete_option('protectuser_options');
delete_site_option('protectuser_options');
delete_option('protectfunction_options');
delete_site_option('protectfunction_options');
delete_option('loadinganime_options');
delete_site_option('loadinganime_options');
delete_option('sangoplusfont_options');
delete_site_option('sangoplusfont_options');
delete_option('my_theme_options');
delete_site_option('my_theme_options');
delete_option('tagcloud_options');
delete_site_option('tagcloud_options');
delete_option('pagecss_options');
delete_site_option('pagecss_options');

