<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsts_csp_report_uri');
delete_site_option('hsts_csp_report_uri');
delete_option('disable_csp_header');
delete_site_option('disable_csp_header');
delete_option('disable_hsts_header');
delete_site_option('disable_hsts_header');
delete_option('disable_x_content_type_options_header');
delete_site_option('disable_x_content_type_options_header');
delete_option('disable_x_frame_options_header');
delete_site_option('disable_x_frame_options_header');
delete_option('hsts_max_age');
delete_site_option('hsts_max_age');
delete_option('hsts_include_subdomains');
delete_site_option('hsts_include_subdomains');
delete_option('hsts_preload');
delete_site_option('hsts_preload');
delete_option('hsts_csp');
delete_site_option('hsts_csp');
delete_option('hsts_pp');
delete_site_option('hsts_pp');
delete_option('hsts_x_frame_options');
delete_site_option('hsts_x_frame_options');
delete_option('hsts_x_frame_options_allow_from_url');
delete_site_option('hsts_x_frame_options_allow_from_url');
delete_option('HEADERS_SECURITY_ADVANCED_HSTS_WP_PLUGIN_VERSION');
delete_site_option('HEADERS_SECURITY_ADVANCED_HSTS_WP_PLUGIN_VERSION');
delete_option('hsts_x_frame_options_url_field');
delete_site_option('hsts_x_frame_options_url_field');

