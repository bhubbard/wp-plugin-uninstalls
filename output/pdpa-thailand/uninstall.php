<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdpa_thailand_settings');
delete_site_option('pdpa_thailand_settings');
delete_option('pdpa_thailand_msg');
delete_site_option('pdpa_thailand_msg');
delete_option('pdpa_thailand_cookies');
delete_site_option('pdpa_thailand_cookies');
delete_option('pdpa_thailand_appearance');
delete_site_option('pdpa_thailand_appearance');
delete_option('pdpa_thailand_js_version');
delete_site_option('pdpa_thailand_js_version');
delete_option('pdpa_thailand_css_version');
delete_site_option('pdpa_thailand_css_version');
delete_option('pdpa_thailand_installed');
delete_site_option('pdpa_thailand_installed');
delete_option('pdpa_thailand_advanced');
delete_site_option('pdpa_thailand_advanced');
delete_option('pdpa_thailand_license_status');
delete_site_option('pdpa_thailand_license_status');
delete_option('pdpa_thailand_license_key');
delete_site_option('pdpa_thailand_license_key');

// Delete Transients
delete_transient('pdpa_thailand_script');
delete_site_transient('pdpa_thailand_script');
delete_transient('pdpa_thailand_style');
delete_site_transient('pdpa_thailand_style');
delete_transient('pdpa_thailand_rating');
delete_site_transient('pdpa_thailand_rating');

