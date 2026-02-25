<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailcheckco_trust_rate');
delete_site_option('mailcheckco_trust_rate');
delete_option('mailcheckco_enable_core');
delete_site_option('mailcheckco_enable_core');
delete_option('mailcheckco_enable_acf');
delete_site_option('mailcheckco_enable_acf');
delete_option('mailcheckco_enable_cf7');
delete_site_option('mailcheckco_enable_cf7');
delete_option('mailcheckco_enable_woo');
delete_site_option('mailcheckco_enable_woo');
delete_option('mailcheckco_enable_elementor');
delete_site_option('mailcheckco_enable_elementor');
delete_option('mailcheckco_enable_mailpoet');
delete_site_option('mailcheckco_enable_mailpoet');
delete_option('mailcheckco_hash');
delete_site_option('mailcheckco_hash');
delete_option('mailcheckco_message');
delete_site_option('mailcheckco_message');
delete_option('mailcheckco_api_error');
delete_site_option('mailcheckco_api_error');

