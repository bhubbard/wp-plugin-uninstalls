<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('company_name');
delete_site_option('company_name');
delete_option('company_iban');
delete_site_option('company_iban');
delete_option('company_bic');
delete_site_option('company_bic');
delete_option('company_qr_size');
delete_site_option('company_qr_size');

