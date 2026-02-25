<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_otd_enable');
delete_site_option('_otd_enable');
delete_option('_otd_display_location');
delete_site_option('_otd_display_location');
delete_option('_otd_tips_title');
delete_site_option('_otd_tips_title');
delete_option('_otd_taxable');
delete_site_option('_otd_taxable');

