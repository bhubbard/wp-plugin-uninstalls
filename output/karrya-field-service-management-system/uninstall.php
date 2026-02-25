<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsms_no_of_rows');
delete_site_option('fsms_no_of_rows');
delete_option('email_footer');
delete_site_option('email_footer');
delete_option('email_header');
delete_site_option('email_header');
delete_option('fsms_currency_symbol');
delete_site_option('fsms_currency_symbol');
delete_option('fsms_vat');
delete_site_option('fsms_vat');
delete_option('fsms_company_address');
delete_site_option('fsms_company_address');
delete_option('thanks_email');
delete_site_option('thanks_email');
delete_option('from_email_address');
delete_site_option('from_email_address');
delete_option('thanks_email_subject');
delete_site_option('thanks_email_subject');
delete_option('invoice_top_setting');
delete_site_option('invoice_top_setting');
delete_option('invoice_bottom_setting');
delete_site_option('invoice_bottom_setting');
delete_option('quote_top_setting');
delete_site_option('quote_top_setting');
delete_option('quote_bottom_setting');
delete_site_option('quote_bottom_setting');

