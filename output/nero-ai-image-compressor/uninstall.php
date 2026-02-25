<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neroaiic_process_uploads');
delete_site_option('neroaiic_process_uploads');
delete_option('neroaiic_process_themes');
delete_site_option('neroaiic_process_themes');
delete_option('neroaiic_image_quality');
delete_site_option('neroaiic_image_quality');
delete_option('neroaiic_api_key');
delete_site_option('neroaiic_api_key');

