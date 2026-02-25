<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mosparo-integration-network-configuration');
delete_site_option('mosparo-integration-network-configuration');
delete_option('mosparo-integration-configuration');
delete_site_option('mosparo-integration-configuration');
delete_option('evf_validation_error');
delete_site_option('evf_validation_error');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');

// Clear Cron Jobs
wp_clear_scheduled_hook('mosparo_integration_refresh_css_url_cache');

