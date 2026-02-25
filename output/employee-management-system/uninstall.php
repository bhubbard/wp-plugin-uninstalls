<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emplmasy_activation_time');
delete_site_option('emplmasy_activation_time');
delete_option('emplmasy_date_format');
delete_site_option('emplmasy_date_format');
delete_option('emplmasy_currency_symbol');
delete_site_option('emplmasy_currency_symbol');
delete_option('emplmasy_currency_position');
delete_site_option('emplmasy_currency_position');
delete_option('emplmasy_delete_data_uninstall');
delete_site_option('emplmasy_delete_data_uninstall');

