<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setmore_booking_page_url');
delete_site_option('setmore_booking_page_url');
delete_option('languageOption');
delete_site_option('languageOption');
delete_option('setmore_booking_page_text');
delete_site_option('setmore_booking_page_text');

