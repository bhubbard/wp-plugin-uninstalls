<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');
delete_option('shokola_theme_style');
delete_site_option('shokola_theme_style');
delete_option('shokola_logo_name');
delete_site_option('shokola_logo_name');
delete_option('shokola_background_name');
delete_site_option('shokola_background_name');
delete_option('shokola_background_repeat');
delete_site_option('shokola_background_repeat');
delete_option('shokola_background_position');
delete_site_option('shokola_background_position');
delete_option('shokola_theme_color');
delete_site_option('shokola_theme_color');
delete_option('shokola_h1_color');
delete_site_option('shokola_h1_color');
delete_option('shokola_theme_dark');
delete_site_option('shokola_theme_dark');
delete_option('shokola_background_cover');
delete_site_option('shokola_background_cover');
delete_option('shokola_logo_url');
delete_site_option('shokola_logo_url');
delete_option('shokola_favico_name');
delete_site_option('shokola_favico_name');

