<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('packager_pricing_plans');
delete_site_option('packager_pricing_plans');
delete_option('packager_pricing_table_title');
delete_site_option('packager_pricing_table_title');

// Delete Transients
delete_transient('packager_currency_list');
delete_site_transient('packager_currency_list');

