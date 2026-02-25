<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('promobar_schedule');
delete_site_option('promobar_schedule');
delete_option('promobar_start_date');
delete_site_option('promobar_start_date');
delete_option('promobar_end_date');
delete_site_option('promobar_end_date');
delete_option('promobar_message');
delete_site_option('promobar_message');

