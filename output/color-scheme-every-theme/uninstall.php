<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynamic_theme_colors');
delete_site_option('dynamic_theme_colors');
delete_option('cset_schemes');
delete_site_option('cset_schemes');
delete_option('default_scheme');
delete_site_option('default_scheme');
delete_option('custom_schemes');
delete_site_option('custom_schemes');

