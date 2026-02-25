<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_verifone_onboarding_completed');
delete_site_option('woocommerce_verifone_onboarding_completed');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('verifone_payment_db_version');
delete_site_option('verifone_payment_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('verifoneCheckPaymentStatusCronAction');
wp_clear_scheduled_hook('verifoneUpdatePaymentMethodsCronAction');

