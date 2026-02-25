<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('web_customer_id');
delete_site_option('web_customer_id');
delete_option('web_customer_email');
delete_site_option('web_customer_email');
delete_option('web_customer_email_valid');
delete_site_option('web_customer_email_valid');
delete_option('first_install_msg');
delete_site_option('first_install_msg');

