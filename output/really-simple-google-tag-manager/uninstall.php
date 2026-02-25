<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_tag_manager_id');
delete_site_option('google_tag_manager_id');
delete_option('simple_googletag_diagnostic_data_notice');
delete_site_option('simple_googletag_diagnostic_data_notice');
delete_option('simple_googletag_diagnostic_data_agreed');
delete_site_option('simple_googletag_diagnostic_data_agreed');

