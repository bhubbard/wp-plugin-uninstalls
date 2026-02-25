<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PHM_hijrday');
delete_site_option('PHM_hijrday');
delete_option('PHM_hijrmonth');
delete_site_option('PHM_hijrmonth');
delete_option('PHM_masehiday');
delete_site_option('PHM_masehiday');
delete_option('PHM_masehimonth');
delete_site_option('PHM_masehimonth');
delete_option('PHM_style');
delete_site_option('PHM_style');
delete_option('PHM_adjust');
delete_site_option('PHM_adjust');
delete_option('PHM_separator');
delete_site_option('PHM_separator');

