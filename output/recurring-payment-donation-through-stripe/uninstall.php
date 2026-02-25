<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpadts_apiMode');
delete_site_option('rpadts_apiMode');
delete_option('rpadts_currency');
delete_site_option('rpadts_currency');
delete_option('rpadts_secretKey_test');
delete_site_option('rpadts_secretKey_test');
delete_option('rpadts_publishKey_test');
delete_site_option('rpadts_publishKey_test');
delete_option('rpadts_secretKey_live');
delete_site_option('rpadts_secretKey_live');
delete_option('rpadts_publishKey_live');
delete_site_option('rpadts_publishKey_live');
delete_option('rpadts_popup_name');
delete_site_option('rpadts_popup_name');
delete_option('rpadts_popup_desc');
delete_site_option('rpadts_popup_desc');
delete_option('stripe_custom_logo');
delete_site_option('stripe_custom_logo');
delete_option('rpadts_recurring_payment_check');
delete_site_option('rpadts_recurring_payment_check');
delete_option('rpadts_email_subject');
delete_site_option('rpadts_email_subject');
delete_option('rpadts_email_messagebody');
delete_site_option('rpadts_email_messagebody');
delete_option('rpadts_email_receipt_sender_address');
delete_site_option('rpadts_email_receipt_sender_address');
delete_option('rpadts_cc_payment_receipt');
delete_site_option('rpadts_cc_payment_receipt');

