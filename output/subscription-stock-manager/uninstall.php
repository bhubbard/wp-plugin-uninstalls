<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iter8_subscription_stock_manager_logging_enabled');
delete_site_option('iter8_subscription_stock_manager_logging_enabled');
delete_option('iter8_subscription_stock_manager_global_renewal_setting');
delete_site_option('iter8_subscription_stock_manager_global_renewal_setting');

