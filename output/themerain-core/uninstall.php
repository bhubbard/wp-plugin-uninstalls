<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themerain_custom_fonts_counter');
delete_site_option('themerain_custom_fonts_counter');
delete_option('themerain_custom_fonts');
delete_site_option('themerain_custom_fonts');
delete_option('themerain_adobe_fonts');
delete_site_option('themerain_adobe_fonts');
delete_option('themerain_adobe_fonts_id');
delete_site_option('themerain_adobe_fonts_id');
delete_option('themerain_portfolio_slug');
delete_site_option('themerain_portfolio_slug');

