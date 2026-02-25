<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('currency_field');
delete_site_option('currency_field');
delete_option('title_field');
delete_site_option('title_field');
delete_option('charts_field');
delete_site_option('charts_field');
delete_option('chart_field');
delete_site_option('chart_field');

