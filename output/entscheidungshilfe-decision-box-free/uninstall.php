<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ehf_support');
delete_site_option('ehf_support');
delete_option('ehf_text');
delete_site_option('ehf_text');
delete_option('ehf_farbe');
delete_site_option('ehf_farbe');
delete_option('ehf_anzeige');
delete_site_option('ehf_anzeige');
delete_option('ehf_abstand');
delete_site_option('ehf_abstand');
delete_option('ehf_height');
delete_site_option('ehf_height');
delete_option('ehf_text_color');
delete_site_option('ehf_text_color');
delete_option('ehf_width');
delete_site_option('ehf_width');
delete_option('ehf_text_size');
delete_site_option('ehf_text_size');
delete_option('ehf_answer_size');
delete_site_option('ehf_answer_size');
delete_option('ehf_answer_01');
delete_site_option('ehf_answer_01');
delete_option('ehf_answer_02');
delete_site_option('ehf_answer_02');

