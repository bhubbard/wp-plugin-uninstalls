<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfsbwc_settings');
delete_site_option('sfsbwc_settings');
delete_option('sfsbwc_detected_heading_font');
delete_site_option('sfsbwc_detected_heading_font');
delete_option('sfsbwc_options_v1');
delete_site_option('sfsbwc_options_v1');
delete_option('sfsbwc_options');
delete_site_option('sfsbwc_options');

// Delete Transients
delete_transient('sfsbwc_activation_redirect');
delete_site_transient('sfsbwc_activation_redirect');

