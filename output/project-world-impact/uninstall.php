<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpwi_design_settings');
delete_site_option('mpwi_design_settings');
delete_option('mpwi_access_token');
delete_site_option('mpwi_access_token');
delete_option('mpwi_gtm_container_id');
delete_site_option('mpwi_gtm_container_id');
delete_option('mpwi_enable_gtm');
delete_site_option('mpwi_enable_gtm');
delete_option('mpwi_settings');
delete_site_option('mpwi_settings');

// Delete Transients
delete_transient('mpwi_flash_message');
delete_site_transient('mpwi_flash_message');

