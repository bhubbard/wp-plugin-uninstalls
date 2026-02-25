<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fallback_url');
delete_site_option('fallback_url');
delete_option('fallback_text');
delete_site_option('fallback_text');
delete_option('fallback_desc');
delete_site_option('fallback_desc');
delete_option('fallback_title');
delete_site_option('fallback_title');
delete_option('fallback_type');
delete_site_option('fallback_type');
delete_option('fallback_style');
delete_site_option('fallback_style');
delete_option('fallback_color');
delete_site_option('fallback_color');
delete_option('fallback_height');
delete_site_option('fallback_height');
delete_option('fallback_width');
delete_site_option('fallback_width');
delete_option('fallback_customcss');
delete_site_option('fallback_customcss');
delete_option('fallback_opennewwindow');
delete_site_option('fallback_opennewwindow');
delete_option('fallback_nofollow');
delete_site_option('fallback_nofollow');
delete_option('fallback_textcolor');
delete_site_option('fallback_textcolor');
delete_option('fallback_customvi');
delete_site_option('fallback_customvi');
delete_option('fallback_customho');
delete_site_option('fallback_customho');
delete_option('fallback_donated');
delete_site_option('fallback_donated');

