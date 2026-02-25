<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('achtm_google_measurement_id');
delete_site_option('achtm_google_measurement_id');
delete_option('achtm_google_anaytics_code');
delete_site_option('achtm_google_anaytics_code');
delete_option('achtm_tag_manager_id');
delete_site_option('achtm_tag_manager_id');

// Delete Transients
delete_transient('achtm-admin-notice-on-activation');
delete_site_transient('achtm-admin-notice-on-activation');

