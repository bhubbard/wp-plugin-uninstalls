<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('template_quran_live');
delete_site_option('template_quran_live');
delete_option('tpl_quran_live');
delete_site_option('tpl_quran_live');
delete_option('background_quranlive_color');
delete_site_option('background_quranlive_color');
delete_option('quran_live_languages');
delete_site_option('quran_live_languages');
delete_option('quran_live_recitator');
delete_site_option('quran_live_recitator');
delete_option('quranlive_custum_css');
delete_site_option('quranlive_custum_css');

// Delete Transients
delete_transient('quranlive-options');
delete_site_transient('quranlive-options');

