<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_ga_send_actions');
delete_site_option('cf7_ga_send_actions');
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('cf7-ga-180-notice-dismissed');
delete_site_option('cf7-ga-180-notice-dismissed');
delete_option('cf7-ga-186-notice-dismissed');
delete_site_option('cf7-ga-186-notice-dismissed');

// Delete Transients
delete_transient('cf7_ga_form_ids');
delete_site_transient('cf7_ga_form_ids');

