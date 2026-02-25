<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deklaracjadostepnosci_on');
delete_site_option('deklaracjadostepnosci_on');
delete_option('deklaracjadostepnosci_optimize');
delete_site_option('deklaracjadostepnosci_optimize');
delete_option('deklaracjadostepnosci_webaimcss');
delete_site_option('deklaracjadostepnosci_webaimcss');
delete_option('deklaracjadostepnosci_option_name');
delete_site_option('deklaracjadostepnosci_option_name');
delete_option('deklaracjadostepnosci_nazwa_podmiotu');
delete_site_option('deklaracjadostepnosci_nazwa_podmiotu');
delete_option('deklaracjadostepnosci_status');
delete_site_option('deklaracjadostepnosci_status');
delete_option('deklaracjadostepnosci_status_text_add');
delete_site_option('deklaracjadostepnosci_status_text_add');
delete_option('deklaracjadostepnosci_status_data');
delete_site_option('deklaracjadostepnosci_status_data');
delete_option('deklaracjadostepnosci_kontakt_nazwa');
delete_site_option('deklaracjadostepnosci_kontakt_nazwa');
delete_option('deklaracjadostepnosci_kontakt_email');
delete_site_option('deklaracjadostepnosci_kontakt_email');
delete_option('deklaracjadostepnosci_kontakt_telefon');
delete_site_option('deklaracjadostepnosci_kontakt_telefon');
delete_option('deklaracjadostepnosci_architektura_0_0');
delete_site_option('deklaracjadostepnosci_architektura_0_0');
delete_option('deklaracjadostepnosci_architektura_0_1');
delete_site_option('deklaracjadostepnosci_architektura_0_1');
delete_option('deklaracjadostepnosci_architektura_1_0');
delete_site_option('deklaracjadostepnosci_architektura_1_0');
delete_option('deklaracjadostepnosci_architektura_1_1');
delete_site_option('deklaracjadostepnosci_architektura_1_1');
delete_option('deklaracjadostepnosci_architektura_2_0');
delete_site_option('deklaracjadostepnosci_architektura_2_0');
delete_option('deklaracjadostepnosci_architektura_2_1');
delete_site_option('deklaracjadostepnosci_architektura_2_1');
delete_option('deklaracjadostepnosci_architektura_3_0');
delete_site_option('deklaracjadostepnosci_architektura_3_0');
delete_option('deklaracjadostepnosci_architektura_3_1');
delete_site_option('deklaracjadostepnosci_architektura_3_1');
delete_option('deklaracjadostepnosci_architektura_4_0');
delete_site_option('deklaracjadostepnosci_architektura_4_0');
delete_option('deklaracjadostepnosci_architektura_4_1');
delete_site_option('deklaracjadostepnosci_architektura_4_1');

