<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('license_checkout_confirm');
delete_site_option('license_checkout_confirm');
delete_option('check_confirm_page_fields_setting');
delete_site_option('check_confirm_page_fields_setting');
delete_option('confirm_on_off_text_bill');
delete_site_option('confirm_on_off_text_bill');
delete_option('check_confirm_page_option');
delete_site_option('check_confirm_page_option');
delete_option('check_confirm_page_additional');
delete_site_option('check_confirm_page_additional');

