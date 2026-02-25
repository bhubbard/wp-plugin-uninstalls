<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alphagf_installed');
delete_site_option('alphagf_installed');
delete_option('alphagf_version');
delete_site_option('alphagf_version');
delete_option('gravityformsaddon_alphagf_google_calendar_settings');
delete_site_option('gravityformsaddon_alphagf_google_calendar_settings');
delete_option('alphagf_gc_calender_list');
delete_site_option('alphagf_gc_calender_list');
delete_option('alphagf_gc_auth_verified');
delete_site_option('alphagf_gc_auth_verified');
delete_option('alphagf_gc_auth_account');
delete_site_option('alphagf_gc_auth_account');
delete_option('alphagf_gc_token_data');
delete_site_option('alphagf_gc_token_data');
delete_option('gravityformsaddon_alphagf_google_sheet_settings');
delete_site_option('gravityformsaddon_alphagf_google_sheet_settings');
delete_option('alphagf_gs_sheet_list');
delete_site_option('alphagf_gs_sheet_list');
delete_option('alphagf_gs_auth_verified');
delete_site_option('alphagf_gs_auth_verified');
delete_option('alphagf_gs_auth_account');
delete_site_option('alphagf_gs_auth_account');
delete_option('alphagf_gs_token_data');
delete_site_option('alphagf_gs_token_data');
delete_option('alphagf_gs_sheet_names');
delete_site_option('alphagf_gs_sheet_names');

// Delete Transients
delete_transient('alphagf_gs_sheet_headers');
delete_site_transient('alphagf_gs_sheet_headers');

