<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bg_forreaders_zoom');
delete_site_option('bg_forreaders_zoom');
delete_option('bg_forreaders_generate_opds');
delete_site_option('bg_forreaders_generate_opds');
delete_option('bg_forreaders_before');
delete_site_option('bg_forreaders_before');
delete_option('bg_forreaders_after');
delete_site_option('bg_forreaders_after');
delete_option('bg_forreaders_single');
delete_site_option('bg_forreaders_single');
delete_option('bg_forreaders_excat');
delete_site_option('bg_forreaders_excat');
delete_option('bg_forreaders_cats');
delete_site_option('bg_forreaders_cats');
delete_option('bg_forreaders_type_post');
delete_site_option('bg_forreaders_type_post');
delete_option('bg_forreaders_type_page');
delete_site_option('bg_forreaders_type_page');
delete_option('bg_forreaders_while_displayed');
delete_site_option('bg_forreaders_while_displayed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bg_forreaders_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bg_forreaders_links');
delete_site_option('bg_forreaders_links');
delete_option('bg_forreaders_prompt');
delete_site_option('bg_forreaders_prompt');
delete_option('bg_forreaders_separator');
delete_site_option('bg_forreaders_separator');
delete_option('bg_forreaders_while_saved');
delete_site_option('bg_forreaders_while_saved');
delete_option('bg_forreaders_offline_query');
delete_site_option('bg_forreaders_offline_query');
delete_option('bg_forreaders_stack');
delete_site_option('bg_forreaders_stack');
delete_option('bg_forreaders_cron_updated');
delete_site_option('bg_forreaders_cron_updated');
delete_option('bg_forreaders_stack_interval');
delete_site_option('bg_forreaders_stack_interval');
delete_option('bg_forreaders_all_checktime');
delete_site_option('bg_forreaders_all_checktime');
delete_option('bg_forreaders_all_interval');
delete_site_option('bg_forreaders_all_interval');
delete_option('bg_forreaders_log_checktime');
delete_site_option('bg_forreaders_log_checktime');
delete_option('bg_forreaders_log_interval');
delete_site_option('bg_forreaders_log_interval');
delete_option('bg_forreaders_book_folder');
delete_site_option('bg_forreaders_book_folder');
delete_option('bg_forreaders_while_starttime');
delete_site_option('bg_forreaders_while_starttime');
delete_option('bg_forreaders_pdf');
delete_site_option('bg_forreaders_pdf');
delete_option('bg_forreaders_epub');
delete_site_option('bg_forreaders_epub');
delete_option('bg_forreaders_mobi');
delete_site_option('bg_forreaders_mobi');
delete_option('bg_forreaders_fb2');
delete_site_option('bg_forreaders_fb2');
delete_option('bg_forreaders_author_field');
delete_site_option('bg_forreaders_author_field');
delete_option('bg_forreaders_publishing_year');
delete_site_option('bg_forreaders_publishing_year');
delete_option('bg_forreaders_genre');
delete_site_option('bg_forreaders_genre');
delete_option('bg_forreaders_add_title');
delete_site_option('bg_forreaders_add_title');
delete_option('bg_forreaders_add_author');
delete_site_option('bg_forreaders_add_author');
delete_option('bg_forreaders_cover_title');
delete_site_option('bg_forreaders_cover_title');
delete_option('bg_forreaders_cover_author');
delete_site_option('bg_forreaders_cover_author');
delete_option('bg_forreaders_cover_site');
delete_site_option('bg_forreaders_cover_site');
delete_option('bg_forreaders_cover_year');
delete_site_option('bg_forreaders_cover_year');
delete_option('bg_forreaders_cover_thumb');
delete_site_option('bg_forreaders_cover_thumb');
delete_option('bg_forreaders_cover_image');
delete_site_option('bg_forreaders_cover_image');
delete_option('bg_forreaders_text_color');
delete_site_option('bg_forreaders_text_color');
delete_option('bg_forreaders_bg_color');
delete_site_option('bg_forreaders_bg_color');
delete_option('bg_forreaders_left_offset');
delete_site_option('bg_forreaders_left_offset');
delete_option('bg_forreaders_right_offset');
delete_site_option('bg_forreaders_right_offset');
delete_option('bg_forreaders_top_offset');
delete_site_option('bg_forreaders_top_offset');
delete_option('bg_forreaders_bottom_offset');
delete_site_option('bg_forreaders_bottom_offset');
delete_option('bg_forreaders_memory_limit');
delete_site_option('bg_forreaders_memory_limit');
delete_option('bg_forreaders_time_limit');
delete_site_option('bg_forreaders_time_limit');
delete_option('bg_forreaders_css');
delete_site_option('bg_forreaders_css');
delete_option('bg_forreaders_tags');
delete_site_option('bg_forreaders_tags');
delete_option('bg_forreaders_extlinks');
delete_site_option('bg_forreaders_extlinks');
delete_option('bg_forreaders_allow_p');
delete_site_option('bg_forreaders_allow_p');

// Clear Cron Jobs
wp_clear_scheduled_hook('bg_forreaders_stack_cron_action');
wp_clear_scheduled_hook('bg_forreaders_all_cron_action');
wp_clear_scheduled_hook('bg_forreaders_log_cron_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'for_readers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'for_readers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'for_readers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'for_readers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'genre' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'genre' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'genre' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'genre' ) );

