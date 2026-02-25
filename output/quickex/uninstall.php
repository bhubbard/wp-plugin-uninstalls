<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickex_api_key');
delete_site_option('quickex_api_key');
delete_option('quickex_theme');
delete_site_option('quickex_theme');
delete_option('quickex_main_url');
delete_site_option('quickex_main_url');
delete_option('quickex_how_it_works_url');
delete_site_option('quickex_how_it_works_url');
delete_option('quickex_terms_of_use_url');
delete_site_option('quickex_terms_of_use_url');
delete_option('quickex_privacy_policy_url');
delete_site_option('quickex_privacy_policy_url');
delete_option('quickex_theme_color');
delete_site_option('quickex_theme_color');
delete_option('quickex_theme_text_color');
delete_site_option('quickex_theme_text_color');
delete_option('quickex_show_header');
delete_site_option('quickex_show_header');
delete_option('quickex_show_footer');
delete_site_option('quickex_show_footer');
delete_option('quickex_show_refund_address');
delete_site_option('quickex_show_refund_address');

