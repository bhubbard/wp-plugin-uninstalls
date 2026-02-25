<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('annoscno_link_color');
delete_site_option('annoscno_link_color');
delete_option('annoscno_link_hover_color');
delete_site_option('annoscno_link_hover_color');
delete_option('annoscno_enabled');
delete_site_option('annoscno_enabled');
delete_option('annoscno_text');
delete_site_option('annoscno_text');
delete_option('annoscno_mode');
delete_site_option('annoscno_mode');
delete_option('annoscno_speed');
delete_site_option('annoscno_speed');
delete_option('annoscno_font_size');
delete_site_option('annoscno_font_size');
delete_option('annoscno_font_family');
delete_site_option('annoscno_font_family');
delete_option('annoscno_bg_color');
delete_site_option('annoscno_bg_color');
delete_option('annoscno_text_color');
delete_site_option('annoscno_text_color');

