<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ART_plugin_installed');
delete_site_option('ART_plugin_installed');
delete_option('ART_plugin_version');
delete_site_option('ART_plugin_version');
delete_option('article_reading_time_location');
delete_site_option('article_reading_time_location');
delete_option('article_reading_time_title');
delete_site_option('article_reading_time_title');
delete_option('article_reading_time_word_count');
delete_site_option('article_reading_time_word_count');
delete_option('article_reading_time_character_count');
delete_site_option('article_reading_time_character_count');
delete_option('article_reading_time_read_time');
delete_site_option('article_reading_time_read_time');

