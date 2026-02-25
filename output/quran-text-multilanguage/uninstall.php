<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quran_arabicfont');
delete_site_option('quran_arabicfont');
delete_option('quran_wordspacing');
delete_site_option('quran_wordspacing');
delete_option('quran_template');
delete_site_option('quran_template');
delete_option('border_quran_color');
delete_site_option('border_quran_color');
delete_option('quran_recitator');
delete_site_option('quran_recitator');
delete_option('quran_languages');
delete_site_option('quran_languages');
delete_option('quran_changesuratxt');
delete_site_option('quran_changesuratxt');
delete_option('quran_changelangtxt');
delete_site_option('quran_changelangtxt');
delete_option('quran_changerecitatortxt');
delete_site_option('quran_changerecitatortxt');
delete_option('text_quran_title');
delete_site_option('text_quran_title');
delete_option('background_quran_title');
delete_site_option('background_quran_title');
delete_option('color_quran_number');
delete_site_option('color_quran_number');
delete_option('background_quran_number');
delete_site_option('background_quran_number');
delete_option('text_quran_trans');
delete_site_option('text_quran_trans');
delete_option('background_quran_trans');
delete_site_option('background_quran_trans');
delete_option('text_quran_arabic');
delete_site_option('text_quran_arabic');
delete_option('background_quran_arabic');
delete_site_option('background_quran_arabic');
delete_option('quran_custum_css');
delete_site_option('quran_custum_css');
delete_option('template_quran');
delete_site_option('template_quran');
delete_option('verse_quran_number');
delete_site_option('verse_quran_number');

// Delete Transients
delete_transient('quran-options');
delete_site_transient('quran-options');

