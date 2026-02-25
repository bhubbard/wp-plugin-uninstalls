<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('astr_astrolabe_format');
delete_site_option('astr_astrolabe_format');
delete_option('astr_astrolabe_color_theme');
delete_site_option('astr_astrolabe_color_theme');

