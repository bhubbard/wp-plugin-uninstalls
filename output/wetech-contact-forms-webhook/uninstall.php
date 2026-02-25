<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_webhook_token');
delete_site_option('elementor_webhook_token');
delete_option('gravity_webhook_token');
delete_site_option('gravity_webhook_token');
delete_option('gravity_mapping_array');
delete_site_option('gravity_mapping_array');

