<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumbgenie_image_model');
delete_site_option('thumbgenie_image_model');
delete_option('thumbgenie_quality');
delete_site_option('thumbgenie_quality');
delete_option('thumbgenie_style');
delete_site_option('thumbgenie_style');
delete_option('thumbgenie_size');
delete_site_option('thumbgenie_size');
delete_option('thumbgenie_api_key');
delete_site_option('thumbgenie_api_key');

// Delete Transients
delete_transient('thumbgenie_subscription_data');
delete_site_transient('thumbgenie_subscription_data');

