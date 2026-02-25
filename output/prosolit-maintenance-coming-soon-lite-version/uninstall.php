<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prmcslv_option_description');
delete_site_option('prmcslv_option_description');
delete_option('prmcslv_option_social_facebook');
delete_site_option('prmcslv_option_social_facebook');
delete_option('prmcslv_option_social_x');
delete_site_option('prmcslv_option_social_x');
delete_option('prmcslv_option_social_linkedin');
delete_site_option('prmcslv_option_social_linkedin');
delete_option('prmcslv_option_social_instagram');
delete_site_option('prmcslv_option_social_instagram');
delete_option('prmcslv_option_social_youtube');
delete_site_option('prmcslv_option_social_youtube');
delete_option('prmcslv_option_social_tiktok');
delete_site_option('prmcslv_option_social_tiktok');
delete_option('prmcslv_option_social_color');
delete_site_option('prmcslv_option_social_color');
delete_option('prmcslv_option_mode');
delete_site_option('prmcslv_option_mode');
delete_option('prmcslv_option_title');
delete_site_option('prmcslv_option_title');
delete_option('prmcslv_option_headline');
delete_site_option('prmcslv_option_headline');
delete_option('prmcslv_option_background_color');
delete_site_option('prmcslv_option_background_color');
delete_option('prmcslv_option_background_image');
delete_site_option('prmcslv_option_background_image');
delete_option('prmcslv_option_headline_color');
delete_site_option('prmcslv_option_headline_color');
delete_option('prmcslv_option_description_color');
delete_site_option('prmcslv_option_description_color');
delete_option('prmcslv_option_font_policy');
delete_site_option('prmcslv_option_font_policy');

