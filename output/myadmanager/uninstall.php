<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myadmanager_paypal_add');
delete_site_option('myadmanager_paypal_add');
delete_option('myadmanager_cost_week');
delete_site_option('myadmanager_cost_week');
delete_option('myadmanager_name_week');
delete_site_option('myadmanager_name_week');
delete_option('myadmanager_cost_month');
delete_site_option('myadmanager_cost_month');
delete_option('myadmanager_name_month');
delete_site_option('myadmanager_name_month');
delete_option('myadmanager_paypal_return_page');
delete_site_option('myadmanager_paypal_return_page');
delete_option('myadmanager_paypal_email_msg');
delete_site_option('myadmanager_paypal_email_msg');
delete_option('myAdManager_db_version');
delete_site_option('myAdManager_db_version');
delete_option('myadmanager_week_enable');
delete_site_option('myadmanager_week_enable');
delete_option('myadmanager_widget_title');
delete_site_option('myadmanager_widget_title');
delete_option('myAdManager_version');
delete_site_option('myAdManager_version');
delete_option('myadmanager_paypal_enable');
delete_site_option('myadmanager_paypal_enable');

