<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('smtardi_tariff_categories');
delete_site_option('smtardi_tariff_categories');
delete_option('smtardi_duty_percent');
delete_site_option('smtardi_duty_percent');

