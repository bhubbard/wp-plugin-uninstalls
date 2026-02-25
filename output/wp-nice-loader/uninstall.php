<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nice_loader_font_size');
delete_site_option('nice_loader_font_size');
delete_option('nice_loader_title');
delete_site_option('nice_loader_title');
delete_option('nice_loader_subtitle');
delete_site_option('nice_loader_subtitle');
delete_option('nice_loader_logo_url');
delete_site_option('nice_loader_logo_url');
delete_option('nice_loader_theme');
delete_site_option('nice_loader_theme');
delete_option('nice_loader_home_only');
delete_site_option('nice_loader_home_only');
delete_option('nice_loader_main_color');
delete_site_option('nice_loader_main_color');

