<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aRSS_animate_mode');
delete_site_option('aRSS_animate_mode');
delete_option('aRSS_input_apikey');
delete_site_option('aRSS_input_apikey');
delete_option('aRSS_input_pause');
delete_site_option('aRSS_input_pause');
delete_option('aRSS_social_user');
delete_site_option('aRSS_social_user');
delete_option('aRSS_input_url');
delete_site_option('aRSS_input_url');
delete_option('aRSS_source_media');
delete_site_option('aRSS_source_media');
delete_option('aRSS_speed_animate');
delete_site_option('aRSS_speed_animate');
delete_option('aRSS_target_link');
delete_site_option('aRSS_target_link');
delete_option('aRSS_max_items');
delete_site_option('aRSS_max_items');
delete_option('aRSS_date_visible');
delete_site_option('aRSS_date_visible');
delete_option('aRSS_input_paginate');
delete_site_option('aRSS_input_paginate');
delete_option('headline_color');
delete_site_option('headline_color');
delete_option('pub_date');
delete_site_option('pub_date');
delete_option('title_feeds');
delete_site_option('title_feeds');
delete_option('background_box_color');
delete_site_option('background_box_color');

