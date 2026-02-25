<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptpian_record_duration');
delete_site_option('ptpian_record_duration');
delete_option('ptpian_note_display');
delete_site_option('ptpian_note_display');
delete_option('ptpian_reverb_enable');
delete_site_option('ptpian_reverb_enable');
delete_option('ptpian_chordtxt_switch');
delete_site_option('ptpian_chordtxt_switch');
delete_option('ptpian_chordmajor_switch');
delete_site_option('ptpian_chordmajor_switch');
delete_option('ptpian_chordminor_switch');
delete_site_option('ptpian_chordminor_switch');
delete_option('ptpian_chorddim_switch');
delete_site_option('ptpian_chorddim_switch');
delete_option('ptpian_chordagu_switch');
delete_site_option('ptpian_chordagu_switch');
delete_option('ptpian_bgcolor_control');
delete_site_option('ptpian_bgcolor_control');
delete_option('ptpian_toggle_control');
delete_site_option('ptpian_toggle_control');
delete_option('ptpian_select_control');
delete_site_option('ptpian_select_control');
delete_option('ptpian_theme');
delete_site_option('ptpian_theme');
delete_option('ptpian_txtcolor_piano');
delete_site_option('ptpian_txtcolor_piano');
delete_option('ptpian_markcolor_piano');
delete_site_option('ptpian_markcolor_piano');
delete_option('ptpian_keylights_color');
delete_site_option('ptpian_keylights_color');
delete_option('ptpian_txtcolor_control');
delete_site_option('ptpian_txtcolor_control');

