<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_christmas_santa_pop_up_type');
delete_site_option('rs_christmas_santa_pop_up_type');
delete_option('rs_christmas_santa_awesome_santa_flying');
delete_site_option('rs_christmas_santa_awesome_santa_flying');
delete_option('rs_christmas_santa_awesome_santa_flying_type');
delete_site_option('rs_christmas_santa_awesome_santa_flying_type');
delete_option('rs_christmas_santa_awesome_santa_show_on_page');
delete_site_option('rs_christmas_santa_awesome_santa_show_on_page');
delete_option('rs_christmas_santa_pop_up_position');
delete_site_option('rs_christmas_santa_pop_up_position');
delete_option('rs_christmas_santa_awesome_santa');
delete_site_option('rs_christmas_santa_awesome_santa');
delete_option('rs_christmas_santa_music_activation');
delete_site_option('rs_christmas_santa_music_activation');
delete_option('rs_music_show_on_page');
delete_site_option('rs_music_show_on_page');
delete_option('rs_christmas_santa_music_item');
delete_site_option('rs_christmas_santa_music_item');
delete_option('rs_christmas_santa_countdown_active');
delete_site_option('rs_christmas_santa_countdown_active');
delete_option('rs_christmas_santa_countdown_after_text');
delete_site_option('rs_christmas_santa_countdown_after_text');
delete_option('rs_christmas_santa_countdown_before_text');
delete_site_option('rs_christmas_santa_countdown_before_text');
delete_option('rs_christmas_santa_countdown_type');
delete_site_option('rs_christmas_santa_countdown_type');
delete_option('rs_christmas_santa_schedule_active');
delete_site_option('rs_christmas_santa_schedule_active');
delete_option('rs_christmas_santa_schedule_before_date');
delete_site_option('rs_christmas_santa_schedule_before_date');

