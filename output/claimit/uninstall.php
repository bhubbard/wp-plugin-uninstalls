<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('claimit_google_webmaster');
delete_site_option('claimit_google_webmaster');
delete_option('claimit_google_submit_button');
delete_site_option('claimit_google_submit_button');
delete_option('claimit_bing_webmaster');
delete_site_option('claimit_bing_webmaster');
delete_option('claimit_yandex_webmaster');
delete_site_option('claimit_yandex_webmaster');
delete_option('claimit_pinterest');
delete_site_option('claimit_pinterest');
delete_option('claimit_weboftrust_webmaster');
delete_site_option('claimit_weboftrust_webmaster');
delete_option('claimit_webutation_webmaster');
delete_site_option('claimit_webutation_webmaster');
delete_option('claimit_header_section');
delete_site_option('claimit_header_section');
delete_option('claimit_body_section');
delete_site_option('claimit_body_section');
delete_option('claimit_footer_section');
delete_site_option('claimit_footer_section');

