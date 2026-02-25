<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('valuta');
delete_site_option('valuta');
delete_option('qr_size');
delete_site_option('qr_size');
delete_option('platilac');
delete_site_option('platilac');
delete_option('naziv_primaoca');
delete_site_option('naziv_primaoca');
delete_option('svrha_uplate');
delete_site_option('svrha_uplate');
delete_option('sifra_placanja');
delete_site_option('sifra_placanja');
delete_option('broj_racuna_prefix');
delete_site_option('broj_racuna_prefix');
delete_option('broj_racuna');
delete_site_option('broj_racuna');
delete_option('broj_racuna_sufix');
delete_site_option('broj_racuna_sufix');
delete_option('iznos');
delete_site_option('iznos');
delete_option('model');
delete_site_option('model');
delete_option('poziv_broj');
delete_site_option('poziv_broj');
delete_option('qr');
delete_site_option('qr');

