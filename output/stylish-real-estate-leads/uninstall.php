<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srel_settings_page_options');
delete_site_option('srel_settings_page_options');
delete_option('srel_db_version');
delete_site_option('srel_db_version');
delete_option('SREL_MORTGAGE_CALCULATOR_INSTALLED');
delete_site_option('SREL_MORTGAGE_CALCULATOR_INSTALLED');
delete_option('SREL_MORTGAGE_CALCULATOR_VERSION');
delete_site_option('SREL_MORTGAGE_CALCULATOR_VERSION');

