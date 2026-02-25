<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eolwdlf_email_otp_enabled_roles');
delete_site_option('eolwdlf_email_otp_enabled_roles');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

