<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('scan2payme_option_IBAN');
delete_site_option('scan2payme_option_IBAN');
delete_option('scan2payme_option_BIC');
delete_site_option('scan2payme_option_BIC');
delete_option('scan2payme_option_showwhenstatus');
delete_site_option('scan2payme_option_showwhenstatus');
delete_option('scan2payme_option_showwhenmethod');
delete_site_option('scan2payme_option_showwhenmethod');
delete_option('scan2payme_option_showhook');
delete_site_option('scan2payme_option_showhook');
delete_option('scan2payme_option_PreviewMessage');
delete_site_option('scan2payme_option_PreviewMessage');
delete_option('scan2payme_option_PreviewAmount');
delete_site_option('scan2payme_option_PreviewAmount');
delete_option('scan2payme_option_Name');
delete_site_option('scan2payme_option_Name');
delete_option('scan2payme_option_textabove');
delete_site_option('scan2payme_option_textabove');
delete_option('scan2payme_option_textunder');
delete_site_option('scan2payme_option_textunder');
delete_option('scan2payme_option_logo');
delete_site_option('scan2payme_option_logo');
delete_option('scan2payme_option_account');
delete_site_option('scan2payme_option_account');

