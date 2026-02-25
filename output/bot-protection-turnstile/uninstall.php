<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AcceptStripePayments-settings');
delete_site_option('AcceptStripePayments-settings');
delete_option('sdm_advanced_options');
delete_site_option('sdm_advanced_options');
delete_option('bpcft_db_version');
delete_site_option('bpcft_db_version');
delete_option('bpcft_configs');
delete_site_option('bpcft_configs');

