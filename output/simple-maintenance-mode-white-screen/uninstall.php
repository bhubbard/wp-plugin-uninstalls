<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smmws_enabled');
delete_site_option('smmws_enabled');
delete_option('smmws_text');
delete_site_option('smmws_text');
delete_option('smmws_font_size');
delete_site_option('smmws_font_size');
delete_option('smmws_bg_color');
delete_site_option('smmws_bg_color');
delete_option('smmws_text_color');
delete_site_option('smmws_text_color');
delete_option('smmws_font_family');
delete_site_option('smmws_font_family');
delete_option('smmws_logo');
delete_site_option('smmws_logo');

// Delete Transients
delete_transient('smmws_settings_saved');
delete_site_transient('smmws_settings_saved');

