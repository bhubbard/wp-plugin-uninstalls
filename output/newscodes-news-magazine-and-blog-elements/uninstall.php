<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newscodes_settings');
delete_site_option('newscodes_settings');
delete_option('newscodes_shortcodes');
delete_site_option('newscodes_shortcodes');
delete_option('_nc_less_styles');
delete_site_option('_nc_less_styles');
delete_option('_nc_less_styles_exclude');
delete_site_option('_nc_less_styles_exclude');

