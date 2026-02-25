<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrtr_wochentag_zeiten');
delete_site_option('mrtr_wochentag_zeiten');
delete_option('mrtr_benachrichtigungs_email');
delete_site_option('mrtr_benachrichtigungs_email');
delete_option('mrtr_container_background');
delete_site_option('mrtr_container_background');
delete_option('mrtr_text_color');
delete_site_option('mrtr_text_color');
delete_option('mrtr_button_color');
delete_site_option('mrtr_button_color');
delete_option('mrtr_button_hover');
delete_site_option('mrtr_button_hover');
delete_option('mrtr_email_benachrichtigungen');
delete_site_option('mrtr_email_benachrichtigungen');
delete_option('mrtr_intervall');
delete_site_option('mrtr_intervall');
delete_option('mrtr_spezielle_tage_konfiguration');
delete_site_option('mrtr_spezielle_tage_konfiguration');
delete_option('mrtr_max_personen');
delete_site_option('mrtr_max_personen');
delete_option('mrtr_tile_background');
delete_site_option('mrtr_tile_background');
delete_option('mrtr_border_radius');
delete_site_option('mrtr_border_radius');
delete_option('mrtr_verweildauer');
delete_site_option('mrtr_verweildauer');
delete_option('mrtr_restaurant_name');
delete_site_option('mrtr_restaurant_name');
delete_option('mrtr_ausgeschlossene_tage');
delete_site_option('mrtr_ausgeschlossene_tage');
delete_option('mrtr_language');
delete_site_option('mrtr_language');
delete_option('mrtr_mindestvorlauf_stunden');
delete_site_option('mrtr_mindestvorlauf_stunden');
delete_option('mrtr_calendar_token');
delete_site_option('mrtr_calendar_token');
delete_option('mrtr_calendar_token_include_past');
delete_site_option('mrtr_calendar_token_include_past');

// Delete Transients
delete_transient('mrtr_setup_wizard_completed');
delete_site_transient('mrtr_setup_wizard_completed');

