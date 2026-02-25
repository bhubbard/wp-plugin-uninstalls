<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tax_classes');
delete_site_option('woocommerce_tax_classes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_eu_vat_rates_sync');

