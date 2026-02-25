<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('smartemailing_settings_version');
delete_site_option('smartemailing_settings_version');
delete_option('smartemailing-username');
delete_site_option('smartemailing-username');
delete_option('smartemailing-password');
delete_site_option('smartemailing-password');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

