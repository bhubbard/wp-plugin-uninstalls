<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iv_spinner_margin_top');
delete_site_option('iv_spinner_margin_top');
delete_option('iv_spinner_margin_left');
delete_site_option('iv_spinner_margin_left');
delete_option('iv_spinner_margin_bottom');
delete_site_option('iv_spinner_margin_bottom');
delete_option('iv_spinner_margin_right');
delete_site_option('iv_spinner_margin_right');
delete_option('iv_spinner_font');
delete_site_option('iv_spinner_font');
delete_option('iv_spinner_font_size');
delete_site_option('iv_spinner_font_size');
delete_option('iv_spinner_color');
delete_site_option('iv_spinner_color');
delete_option('iv_spinner_background');
delete_site_option('iv_spinner_background');

