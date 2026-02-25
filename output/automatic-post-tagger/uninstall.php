<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('automatic_post_tagger');
delete_site_option('automatic_post_tagger');
delete_option('automatic_post_tagger_keywords');
delete_site_option('automatic_post_tagger_keywords');
delete_option('automatic_post_tagger_groups');
delete_site_option('automatic_post_tagger_groups');
delete_option('apt_plugin_version');
delete_site_option('apt_plugin_version');
delete_option('apt_admin_notice_install');
delete_site_option('apt_admin_notice_install');
delete_option('apt_admin_notice_update');
delete_site_option('apt_admin_notice_update');
delete_option('apt_admin_notice_donate');
delete_site_option('apt_admin_notice_donate');
delete_option('apt_hidden_widgets');
delete_site_option('apt_hidden_widgets');
delete_option('apt_stats_current_tags');
delete_site_option('apt_stats_current_tags');
delete_option('apt_stats_assigned_tags');
delete_site_option('apt_stats_assigned_tags');
delete_option('apt_stats_install_date');
delete_site_option('apt_stats_install_date');
delete_option('apt_post_analysis_title');
delete_site_option('apt_post_analysis_title');
delete_option('apt_post_analysis_content');
delete_site_option('apt_post_analysis_content');
delete_option('apt_post_analysis_excerpt');
delete_site_option('apt_post_analysis_excerpt');
delete_option('apt_handling_current_tags');
delete_site_option('apt_handling_current_tags');
delete_option('apt_string_manipulation_convert_diacritic');
delete_site_option('apt_string_manipulation_convert_diacritic');
delete_option('apt_string_manipulation_lowercase');
delete_site_option('apt_string_manipulation_lowercase');
delete_option('apt_string_manipulation_strip_tags');
delete_site_option('apt_string_manipulation_strip_tags');
delete_option('apt_string_manipulation_replace_whitespaces');
delete_site_option('apt_string_manipulation_replace_whitespaces');
delete_option('apt_string_manipulation_replace_nonalphanumeric');
delete_site_option('apt_string_manipulation_replace_nonalphanumeric');
delete_option('apt_string_manipulation_ignore_asterisks');
delete_site_option('apt_string_manipulation_ignore_asterisks');
delete_option('apt_word_recognition_separators');
delete_site_option('apt_word_recognition_separators');
delete_option('apt_miscellaneous_tag_maximum');
delete_site_option('apt_miscellaneous_tag_maximum');
delete_option('apt_miscellaneous_tagging_occasion');
delete_site_option('apt_miscellaneous_tagging_occasion');
delete_option('apt_miscellaneous_substring_analysis');
delete_site_option('apt_miscellaneous_substring_analysis');
delete_option('apt_miscellaneous_substring_analysis_length');
delete_site_option('apt_miscellaneous_substring_analysis_length');
delete_option('apt_miscellaneous_substring_analysis_start');
delete_site_option('apt_miscellaneous_substring_analysis_start');
delete_option('apt_miscellaneous_wildcards');
delete_site_option('apt_miscellaneous_wildcards');
delete_option('apt_bulk_tagging_posts_per_cycle');
delete_site_option('apt_bulk_tagging_posts_per_cycle');
delete_option('apt_bulk_tagging_range');
delete_site_option('apt_bulk_tagging_range');
delete_option('apt_bulk_tagging_statuses');
delete_site_option('apt_bulk_tagging_statuses');

// Clear Cron Jobs
wp_clear_scheduled_hook('apt_bulk_tagging_event_single_batch');
wp_clear_scheduled_hook('apt_bulk_tagging_event');

