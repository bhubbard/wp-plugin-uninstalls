<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instock_email_option_css');
delete_site_option('instock_email_option_css');
delete_option('instock_email_alert_db_version');
delete_site_option('instock_email_alert_db_version');
delete_option('instock_email_option_sender');
delete_site_option('instock_email_option_sender');
delete_option('instock_email_option_from');
delete_site_option('instock_email_option_from');
delete_option('instock_email_option_subject');
delete_site_option('instock_email_option_subject');
delete_option('instock_email_option_message');
delete_site_option('instock_email_option_message');
delete_option('instock_email_option_error');
delete_site_option('instock_email_option_error');
delete_option('instock_email_option_success');
delete_site_option('instock_email_option_success');
delete_option('instock_email_option_placeholder');
delete_site_option('instock_email_option_placeholder');
delete_option('instock_email_option_submit');
delete_site_option('instock_email_option_submit');
delete_option('instock_email_option_shortcode');
delete_site_option('instock_email_option_shortcode');

