<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ax_icon_select');
delete_site_option('ax_icon_select');
delete_option('ax_width');
delete_site_option('ax_width');
delete_option('ax_height');
delete_site_option('ax_height');
delete_option('ax_background_color');
delete_site_option('ax_background_color');
delete_option('ax_text_color');
delete_site_option('ax_text_color');
delete_option('ax_font_size');
delete_site_option('ax_font_size');
delete_option('ax_padding');
delete_site_option('ax_padding');

