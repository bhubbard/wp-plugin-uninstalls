<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpglry_options');
delete_site_option('cpglry_options');
delete_option('cpglry_setup_notice_dismissed');
delete_site_option('cpglry_setup_notice_dismissed');
delete_option('cpglry_shortcode_notice_dismissed');
delete_site_option('cpglry_shortcode_notice_dismissed');
delete_option('cpglry_new_shortcode_notice_shown');
delete_site_option('cpglry_new_shortcode_notice_shown');

