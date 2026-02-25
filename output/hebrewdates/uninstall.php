<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hebrewdate_date_order');
delete_site_option('hebrewdate_date_order');
delete_option('hebrewdate_spelling');
delete_site_option('hebrewdate_spelling');
delete_option('hebrewdate_correct_sunset');
delete_site_option('hebrewdate_correct_sunset');
delete_option('hebrewdate_latitude');
delete_site_option('hebrewdate_latitude');
delete_option('hebrewdate_longitude');
delete_site_option('hebrewdate_longitude');
delete_option('hebrewdate_latin_display');
delete_site_option('hebrewdate_latin_display');
delete_option('hebrewdate_use_quotes');
delete_site_option('hebrewdate_use_quotes');
delete_option('hebrewdate_display_full');
delete_site_option('hebrewdate_display_full');
delete_option('hebrewdate_display_thousands');
delete_site_option('hebrewdate_display_thousands');

