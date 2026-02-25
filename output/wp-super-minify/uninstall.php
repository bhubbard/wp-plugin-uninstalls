<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsmy_minified_files');
delete_site_option('wpsmy_minified_files');
delete_option('wpsmy_review_notice');
delete_site_option('wpsmy_review_notice');
delete_option('wpsmy_activation_date');
delete_site_option('wpsmy_activation_date');
delete_option('wpsmy_plugin_version');
delete_site_option('wpsmy_plugin_version');
delete_option('wpsmy_combine_js');
delete_site_option('wpsmy_combine_js');
delete_option('wpsmy_combine_css');
delete_site_option('wpsmy_combine_css');

