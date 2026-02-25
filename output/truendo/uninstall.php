<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('truendo_enabled');
delete_site_option('truendo_enabled');
delete_option('truendo_site_id');
delete_site_option('truendo_site_id');
delete_option('truendo_language');
delete_site_option('truendo_language');
delete_option('tru_stat_truendo_header_scripts_json');
delete_site_option('tru_stat_truendo_header_scripts_json');
delete_option('tru_mark_truendo_header_scripts_json');
delete_site_option('tru_mark_truendo_header_scripts_json');
delete_option('truendo_google_consent_enabled');
delete_site_option('truendo_google_consent_enabled');
delete_option('truendo_google_consent_default_states');
delete_site_option('truendo_google_consent_default_states');
delete_option('truendo_google_consent_wait_time');
delete_site_option('truendo_google_consent_wait_time');
delete_option('truendo_wp_consent_enabled');
delete_site_option('truendo_wp_consent_enabled');
delete_option('truendo_wp_consent_default_states');
delete_site_option('truendo_wp_consent_default_states');
delete_option('truendo_trusettings_nofont');
delete_site_option('truendo_trusettings_nofont');
delete_option('truendo_trusettings_transparency');
delete_site_option('truendo_trusettings_transparency');
delete_option('truendo_trusettings_accessibility');
delete_site_option('truendo_trusettings_accessibility');
delete_option('truendo_trusettings_accessibility_border_color');
delete_site_option('truendo_trusettings_accessibility_border_color');
delete_option('truendo_trusettings_lang');
delete_site_option('truendo_trusettings_lang');
delete_option('truendo_trusettings_popup_delay');
delete_site_option('truendo_trusettings_popup_delay');
delete_option('truendo_trusettings_autoblocking_disabled');
delete_site_option('truendo_trusettings_autoblocking_disabled');

