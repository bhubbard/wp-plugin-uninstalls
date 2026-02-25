<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('_moloni_documents_in_progress');
delete_site_option('_moloni_documents_in_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('moloniProductsSync');

