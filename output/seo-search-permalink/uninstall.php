<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssp_permalink');
delete_site_option('ssp_permalink');
delete_option('ssp_separate_symbol_option');
delete_site_option('ssp_separate_symbol_option');
delete_option('ssp_filter_character_option');
delete_site_option('ssp_filter_character_option');
delete_option('ssp_letter_type_option');
delete_site_option('ssp_letter_type_option');
delete_option('ssp_filter_words');
delete_site_option('ssp_filter_words');

