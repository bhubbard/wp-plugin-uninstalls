<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myclub_groups_calendar_title');
delete_site_option('myclub_groups_calendar_title');
delete_option('myclub_groups_group_calendar_desktop_views');
delete_site_option('myclub_groups_group_calendar_desktop_views');
delete_option('myclub_groups_group_calendar_desktop_views_default');
delete_site_option('myclub_groups_group_calendar_desktop_views_default');
delete_option('myclub_groups_group_calendar_mobile_views');
delete_site_option('myclub_groups_group_calendar_mobile_views');
delete_option('myclub_groups_group_calendar_mobile_views_default');
delete_site_option('myclub_groups_group_calendar_mobile_views_default');
delete_option('myclub_groups_group_calendar_show_week_numbers');
delete_site_option('myclub_groups_group_calendar_show_week_numbers');
delete_option('myclub_groups_club_calendar_title');
delete_site_option('myclub_groups_club_calendar_title');
delete_option('myclub_groups_club_calendar_desktop_views');
delete_site_option('myclub_groups_club_calendar_desktop_views');
delete_option('myclub_groups_club_calendar_desktop_views_default');
delete_site_option('myclub_groups_club_calendar_desktop_views_default');
delete_option('myclub_groups_club_calendar_mobile_views');
delete_site_option('myclub_groups_club_calendar_mobile_views');
delete_option('myclub_groups_club_calendar_mobile_views_default');
delete_site_option('myclub_groups_club_calendar_mobile_views_default');
delete_option('myclub_groups_club_calendar_show_week_numbers');
delete_site_option('myclub_groups_club_calendar_show_week_numbers');
delete_option('myclub_groups_club_news_title');
delete_site_option('myclub_groups_club_news_title');
delete_option('myclub_groups_coming_games_title');
delete_site_option('myclub_groups_coming_games_title');
delete_option('myclub_groups_leaders_title');
delete_site_option('myclub_groups_leaders_title');
delete_option('myclub_groups_members_title');
delete_site_option('myclub_groups_members_title');
delete_option('myclub_groups_news_title');
delete_site_option('myclub_groups_news_title');
delete_option('myclub_groups_page_picture');
delete_site_option('myclub_groups_page_picture');
delete_option('myclub_groups_api_key');
delete_site_option('myclub_groups_api_key');
delete_option('myclub_groups_group_slug');
delete_site_option('myclub_groups_group_slug');
delete_option('myclub_groups_group_news_slug');
delete_site_option('myclub_groups_group_news_slug');
delete_option('myclub_groups_add_news_categories');
delete_site_option('myclub_groups_add_news_categories');
delete_option('myclub_groups_delete_unused_news');
delete_site_option('myclub_groups_delete_unused_news');
delete_option('myclub_groups_page_template');
delete_site_option('myclub_groups_page_template');
delete_option('myclub_groups_page_calendar');
delete_site_option('myclub_groups_page_calendar');
delete_option('myclub_groups_page_navigation');
delete_site_option('myclub_groups_page_navigation');
delete_option('myclub_groups_page_members');
delete_site_option('myclub_groups_page_members');
delete_option('myclub_groups_page_leaders');
delete_site_option('myclub_groups_page_leaders');
delete_option('myclub_groups_page_menu');
delete_site_option('myclub_groups_page_menu');
delete_option('myclub_groups_page_news');
delete_site_option('myclub_groups_page_news');
delete_option('myclub_groups_page_title');
delete_site_option('myclub_groups_page_title');
delete_option('myclub_groups_page_coming_games');
delete_site_option('myclub_groups_page_coming_games');
delete_option('myclub_groups_show_items_order');
delete_site_option('myclub_groups_show_items_order');
delete_option('myclub_groups_remove_unused_news_items');
delete_site_option('myclub_groups_remove_unused_news_items');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_contact_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_contact_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_contact_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_contact_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_nfo_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_nfo_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_nfo_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_nfo_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_source_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_source_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_source_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_source_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_activities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_activities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_activities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_activities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_info_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_info_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_info_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_info_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_groups_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_groups_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_groups_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_groups_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myclub_sections_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myclub_sections_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myclub_sections_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myclub_sections_id' ) );

