<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fidelit_api_key');
delete_site_option('fidelit_api_key');
delete_option('fidelit_api_secret');
delete_site_option('fidelit_api_secret');
delete_option('fidelit_recupero_password_richiedi_codice_card');
delete_site_option('fidelit_recupero_password_richiedi_codice_card');
delete_option('fidelit_email_registrazione');
delete_site_option('fidelit_email_registrazione');
delete_option('fidelit_email_benvenuto');
delete_site_option('fidelit_email_benvenuto');
delete_option('fidelit_email_recupero_password');
delete_site_option('fidelit_email_recupero_password');
delete_option('fidelit_url_piattaforma');
delete_site_option('fidelit_url_piattaforma');
delete_option('fidelit_api_azienda_id');
delete_site_option('fidelit_api_azienda_id');
delete_option('fidelit_api_punto_vendita_id');
delete_site_option('fidelit_api_punto_vendita_id');
delete_option('fidelit_privacy');
delete_site_option('fidelit_privacy');
delete_option('fidelit_db_hostname');
delete_site_option('fidelit_db_hostname');
delete_option('fidelit_db_port');
delete_site_option('fidelit_db_port');
delete_option('fidelit_db_name');
delete_site_option('fidelit_db_name');
delete_option('fidelit_db_username');
delete_site_option('fidelit_db_username');
delete_option('fidelit_db_password');
delete_site_option('fidelit_db_password');
delete_option('fidelit_custom_css');
delete_site_option('fidelit_custom_css');
delete_option('fidelit_enable_html_email');
delete_site_option('fidelit_enable_html_email');

