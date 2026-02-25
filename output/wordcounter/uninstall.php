<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordcounter_counter_position');
delete_site_option('wordcounter_counter_position');
delete_option('wordcounter_counter_show_word_count');
delete_site_option('wordcounter_counter_show_word_count');
delete_option('wordcounter_counter_show_reading_time');
delete_site_option('wordcounter_counter_show_reading_time');
delete_option('wordcounter_counter_show_powered_by');
delete_site_option('wordcounter_counter_show_powered_by');

