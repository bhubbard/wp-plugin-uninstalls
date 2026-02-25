<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcod_styles_scripts');
delete_site_option('wcod_styles_scripts');
delete_option('wcod_restrict');
delete_site_option('wcod_restrict');
delete_option('wcod_display');
delete_site_option('wcod_display');
delete_option('wcod_theme_scripts');
delete_site_option('wcod_theme_scripts');

