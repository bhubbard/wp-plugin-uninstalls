<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_apm_label');
delete_site_option('wc_apm_label');
delete_option('wc_apm_american_express');
delete_site_option('wc_apm_american_express');
delete_option('wc_apm_google');
delete_site_option('wc_apm_google');
delete_option('wc_apm_mastercard');
delete_site_option('wc_apm_mastercard');
delete_option('wc_apm_paypal');
delete_site_option('wc_apm_paypal');
delete_option('wc_apm_visa');
delete_site_option('wc_apm_visa');
delete_option('wc_apm_discover');
delete_site_option('wc_apm_discover');
delete_option('wc_apm_bitcoin');
delete_site_option('wc_apm_bitcoin');
delete_option('wc_apm_maestro');
delete_site_option('wc_apm_maestro');
delete_option('wc_apm_cash_on_delivery');
delete_site_option('wc_apm_cash_on_delivery');
delete_option('wc_apm_dankort');
delete_site_option('wc_apm_dankort');

