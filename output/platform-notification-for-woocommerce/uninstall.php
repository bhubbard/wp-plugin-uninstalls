<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_wc_discord_integration_settings');
delete_site_option('woocommerce_wc_discord_integration_settings');
delete_option('woocommerce_wc_slack_integration_settings');
delete_site_option('woocommerce_wc_slack_integration_settings');

