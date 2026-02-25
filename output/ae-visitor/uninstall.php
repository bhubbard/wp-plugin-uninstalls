<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ae_visitor_day');
delete_site_option('ae_visitor_day');
delete_option('ae_visitor_yesterday');
delete_site_option('ae_visitor_yesterday');
delete_option('ae_visitor_week');
delete_site_option('ae_visitor_week');
delete_option('ae_visitor_month');
delete_site_option('ae_visitor_month');
delete_option('ae_visitor_all');
delete_site_option('ae_visitor_all');
delete_option('ae_visitor_data');
delete_site_option('ae_visitor_data');
delete_option('ae_visitor_day_update');
delete_site_option('ae_visitor_day_update');
delete_option('ae_visitor_week_update');
delete_site_option('ae_visitor_week_update');
delete_option('ae_visitor_month_update');
delete_site_option('ae_visitor_month_update');

