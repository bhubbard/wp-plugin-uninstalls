<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wata_lasttimestamp');
delete_site_option('wata_lasttimestamp');
delete_option('wata_featured_movies');
delete_site_option('wata_featured_movies');
delete_option('wata_tuser');
delete_site_option('wata_tuser');
delete_option('wata_apikey');
delete_site_option('wata_apikey');
delete_option('wata_first_date');
delete_site_option('wata_first_date');
delete_option('wata_personnalratings');
delete_site_option('wata_personnalratings');
delete_option('wata_trailer');
delete_site_option('wata_trailer');
delete_option('wata_overview');
delete_site_option('wata_overview');
delete_option('wata_poster');
delete_site_option('wata_poster');
delete_option('wata_fanart');
delete_site_option('wata_fanart');
delete_option('wata_post_status');
delete_site_option('wata_post_status');
delete_option('wata_authorid');
delete_site_option('wata_authorid');
delete_option('wata_post_date');
delete_site_option('wata_post_date');
delete_option('wata_fanart_as_post_featured_image');
delete_site_option('wata_fanart_as_post_featured_image');
delete_option('wata_post_title_template');
delete_site_option('wata_post_title_template');
delete_option('wata_post_content_template');
delete_site_option('wata_post_content_template');
delete_option('wata_post_excerpt_template');
delete_site_option('wata_post_excerpt_template');
delete_option('wata_post_signature_option');
delete_site_option('wata_post_signature_option');
delete_option('wata_post_signature_template');
delete_site_option('wata_post_signature_template');
delete_option('wata_post_categories');
delete_site_option('wata_post_categories');
delete_option('wata_post_tags');
delete_site_option('wata_post_tags');
delete_option('wata_movie_featuring_tag');
delete_site_option('wata_movie_featuring_tag');
delete_option('wata_movie_featured_number');
delete_site_option('wata_movie_featured_number');

// Clear Cron Jobs
wp_clear_scheduled_hook('wata_twicedaily_event_hook');

