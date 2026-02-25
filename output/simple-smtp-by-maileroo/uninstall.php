<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssbm_delivery_method');
delete_site_option('ssbm_delivery_method');
delete_option('ssbm_api_sending_key');
delete_site_option('ssbm_api_sending_key');
delete_option('ssbm_smtp_host');
delete_site_option('ssbm_smtp_host');
delete_option('ssbm_smtp_port');
delete_site_option('ssbm_smtp_port');
delete_option('ssbm_authentication');
delete_site_option('ssbm_authentication');
delete_option('ssbm_smtp_username');
delete_site_option('ssbm_smtp_username');
delete_option('ssbm_smtp_password');
delete_site_option('ssbm_smtp_password');
delete_option('ssbm_encryption');
delete_site_option('ssbm_encryption');
delete_option('ssbm_from_email');
delete_site_option('ssbm_from_email');
delete_option('ssbm_force_from');
delete_site_option('ssbm_force_from');
delete_option('ssbm_from_name');
delete_site_option('ssbm_from_name');

// Delete Transients
delete_transient('ssbm_error_message');
delete_site_transient('ssbm_error_message');

