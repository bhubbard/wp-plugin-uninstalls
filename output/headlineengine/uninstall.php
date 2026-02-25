<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('headlineengine_developer_mode');
delete_site_option('headlineengine_developer_mode');
delete_option('headlineengine_powerwords_list');
delete_site_option('headlineengine_powerwords_list');
delete_option('headlineengine_post_types');
delete_site_option('headlineengine_post_types');
delete_option('headlineengine_reading_grade_enable');
delete_site_option('headlineengine_reading_grade_enable');
delete_option('headlineengine_reading_grade_range_min');
delete_site_option('headlineengine_reading_grade_range_min');
delete_option('headlineengine_reading_grade_target');
delete_site_option('headlineengine_reading_grade_target');
delete_option('headlineengine_reading_grade_range_max');
delete_site_option('headlineengine_reading_grade_range_max');
delete_option('headlineengine_readability_enable');
delete_site_option('headlineengine_readability_enable');
delete_option('headlineengine_readability_range_min');
delete_site_option('headlineengine_readability_range_min');
delete_option('headlineengine_readability_target');
delete_site_option('headlineengine_readability_target');
delete_option('headlineengine_readability_range_max');
delete_site_option('headlineengine_readability_range_max');
delete_option('headlineengine_wordcount_enable');
delete_site_option('headlineengine_wordcount_enable');
delete_option('headlineengine_wordcount_range_min');
delete_site_option('headlineengine_wordcount_range_min');
delete_option('headlineengine_wordcount_target');
delete_site_option('headlineengine_wordcount_target');
delete_option('headlineengine_wordcount_range_max');
delete_site_option('headlineengine_wordcount_range_max');
delete_option('headlineengine_length_enable');
delete_site_option('headlineengine_length_enable');
delete_option('headlineengine_length_range_min');
delete_site_option('headlineengine_length_range_min');
delete_option('headlineengine_length_target');
delete_site_option('headlineengine_length_target');
delete_option('headlineengine_length_range_max');
delete_site_option('headlineengine_length_range_max');
delete_option('headlineengine_powerwords_enable');
delete_site_option('headlineengine_powerwords_enable');

