<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('groupedvartable_option_mainsorter');
delete_site_option('groupedvartable_option_mainsorter');
delete_option('groupedvartable_option_mainwidth');
delete_site_option('groupedvartable_option_mainwidth');
delete_option('groupedvartable_option_buttonsenabled');
delete_site_option('groupedvartable_option_buttonsenabled');

