<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kmo_social_facebook');
delete_site_option('kmo_social_facebook');
delete_option('kmo_social_twitter');
delete_site_option('kmo_social_twitter');
delete_option('kmo_social_pinterest');
delete_site_option('kmo_social_pinterest');
delete_option('kmo_social_googleplus');
delete_site_option('kmo_social_googleplus');
delete_option('kmo_social_facebook_text');
delete_site_option('kmo_social_facebook_text');
delete_option('kmo_social_twitter_text');
delete_site_option('kmo_social_twitter_text');
delete_option('kmo_social_pinterest_text');
delete_site_option('kmo_social_pinterest_text');
delete_option('kmo_social_googleplus_text');
delete_site_option('kmo_social_googleplus_text');
delete_option('kmo_social_color');
delete_site_option('kmo_social_color');
delete_option('kmo_social_font_size');
delete_site_option('kmo_social_font_size');
delete_option('kmo_social_width');
delete_site_option('kmo_social_width');
delete_option('kmo_social_height');
delete_site_option('kmo_social_height');
delete_option('kmo_social_position');
delete_site_option('kmo_social_position');
delete_option('kmo_social_top');
delete_site_option('kmo_social_top');
delete_option('kmo_social_in');
delete_site_option('kmo_social_in');
delete_option('kmo_social_out');
delete_site_option('kmo_social_out');
delete_option('kmo_social_font-size');
delete_site_option('kmo_social_font-size');

