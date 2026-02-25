<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disabled_pages_array');
delete_site_option('disabled_pages_array');
delete_option('debug_mode');
delete_site_option('debug_mode');
delete_option('covid_banner_color');
delete_site_option('covid_banner_color');
delete_option('covid_banner_text_color');
delete_site_option('covid_banner_text_color');
delete_option('covid_banner_link_color');
delete_site_option('covid_banner_link_color');
delete_option('covid_banner_share');
delete_site_option('covid_banner_share');
delete_option('covid_banner_header_text');
delete_site_option('covid_banner_header_text');
delete_option('covid_banner_body_text');
delete_site_option('covid_banner_body_text');
delete_option('covid_banner_link_text');
delete_site_option('covid_banner_link_text');
delete_option('covid_banner_header_color');
delete_site_option('covid_banner_header_color');
delete_option('covid_banner_dismiss_color');
delete_site_option('covid_banner_dismiss_color');

