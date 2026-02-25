<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cleanlite_uc_enabled');
delete_site_option('cleanlite_uc_enabled');
delete_option('cleanlite_uc_logo');
delete_site_option('cleanlite_uc_logo');
delete_option('cleanlite_uc_headline');
delete_site_option('cleanlite_uc_headline');
delete_option('cleanlite_uc_description');
delete_site_option('cleanlite_uc_description');
delete_option('cleanlite_uc_bg');
delete_site_option('cleanlite_uc_bg');
delete_option('cleanlite_uc_font_family');
delete_site_option('cleanlite_uc_font_family');
delete_option('cleanlite_uc_color_heading');
delete_site_option('cleanlite_uc_color_heading');
delete_option('cleanlite_uc_color_text');
delete_site_option('cleanlite_uc_color_text');
delete_option('cleanlite_uc_color_timer');
delete_site_option('cleanlite_uc_color_timer');
delete_option('cleanlite_uc_color_overlay');
delete_site_option('cleanlite_uc_color_overlay');
delete_option('cleanlite_uc_overlay_opacity');
delete_site_option('cleanlite_uc_overlay_opacity');
delete_option('cleanlite_uc_timer_style');
delete_site_option('cleanlite_uc_timer_style');
delete_option('cleanlite_uc_countdown_enabled');
delete_site_option('cleanlite_uc_countdown_enabled');
delete_option('cleanlite_uc_countdown_datetime');
delete_site_option('cleanlite_uc_countdown_datetime');
delete_option('cleanlite_uc_label_days');
delete_site_option('cleanlite_uc_label_days');
delete_option('cleanlite_uc_label_hours');
delete_site_option('cleanlite_uc_label_hours');
delete_option('cleanlite_uc_label_minutes');
delete_site_option('cleanlite_uc_label_minutes');
delete_option('cleanlite_uc_label_seconds');
delete_site_option('cleanlite_uc_label_seconds');
delete_option('cleanlite_uc_social_facebook');
delete_site_option('cleanlite_uc_social_facebook');
delete_option('cleanlite_uc_social_twitter');
delete_site_option('cleanlite_uc_social_twitter');
delete_option('cleanlite_uc_social_instagram');
delete_site_option('cleanlite_uc_social_instagram');
delete_option('cleanlite_uc_status_code');
delete_site_option('cleanlite_uc_status_code');

