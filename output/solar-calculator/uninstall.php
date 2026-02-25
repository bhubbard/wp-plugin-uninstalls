<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solar_calc_rating_notice_shown');
delete_site_option('solar_calc_rating_notice_shown');
delete_option('solar_calc_install_date');
delete_site_option('solar_calc_install_date');
delete_option('solarrechner_einspeiseverguetung');
delete_site_option('solarrechner_einspeiseverguetung');
delete_option('solarrechner_qmkwp');
delete_site_option('solarrechner_qmkwp');
delete_option('solarrechner_degradation');
delete_site_option('solarrechner_degradation');
delete_option('solarrechner_kosten_kwp');
delete_site_option('solarrechner_kosten_kwp');
delete_option('solarrechner_spezifischerErtrag');
delete_site_option('solarrechner_spezifischerErtrag');
delete_option('solarrechner_wartung');
delete_site_option('solarrechner_wartung');
delete_option('solarrechner_batteriekosten');
delete_site_option('solarrechner_batteriekosten');
delete_option('solarrechner_strompreis_steigerung');
delete_site_option('solarrechner_strompreis_steigerung');
delete_option('solarrechner_co2_faktor');
delete_site_option('solarrechner_co2_faktor');
delete_option('solarrechner_autarkie_begrenzung');
delete_site_option('solarrechner_autarkie_begrenzung');
delete_option('solarrechner_eigenverbrauch_prozent');
delete_site_option('solarrechner_eigenverbrauch_prozent');
delete_option('solarrechner_leistungs_begrenzung');
delete_site_option('solarrechner_leistungs_begrenzung');
delete_option('solarrechner_version');
delete_site_option('solarrechner_version');

