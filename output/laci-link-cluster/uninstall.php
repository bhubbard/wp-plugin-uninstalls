<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('laci_internallinks_taxonomy');
delete_site_option('laci_internallinks_taxonomy');
delete_option('laci_num_item_dash');
delete_site_option('laci_num_item_dash');
delete_option('laci_related_box__content');
delete_site_option('laci_related_box__content');
delete_option('laci_related_box__title');
delete_site_option('laci_related_box__title');
delete_option('laci_related_box__title_color');
delete_site_option('laci_related_box__title_color');
delete_option('laci_related_box__content_color');
delete_site_option('laci_related_box__content_color');
delete_option('laci_related_box__bg_color');
delete_site_option('laci_related_box__bg_color');
delete_option('laci_related_box__bd_color');
delete_site_option('laci_related_box__bd_color');
delete_option('laci_related_box__bd_radius');
delete_site_option('laci_related_box__bd_radius');
delete_option('laci_related_box__padding_top');
delete_site_option('laci_related_box__padding_top');
delete_option('laci_related_box__padding_right');
delete_site_option('laci_related_box__padding_right');
delete_option('laci_related_box__padding_bottom');
delete_site_option('laci_related_box__padding_bottom');
delete_option('laci_related_box__padding_left');
delete_site_option('laci_related_box__padding_left');
delete_option('laci_related_box__margin_top');
delete_site_option('laci_related_box__margin_top');
delete_option('laci_related_box__margin_right');
delete_site_option('laci_related_box__margin_right');
delete_option('laci_related_box__margin_bottom');
delete_site_option('laci_related_box__margin_bottom');
delete_option('laci_related_box__margin_left');
delete_site_option('laci_related_box__margin_left');
delete_option('laci_related_box__show_featured_image');
delete_site_option('laci_related_box__show_featured_image');
delete_option('laci_related_box__image');
delete_site_option('laci_related_box__image');
delete_option('laci_related_box__image_width');
delete_site_option('laci_related_box__image_width');
delete_option('laci_related_box__image_height');
delete_site_option('laci_related_box__image_height');
delete_option('laci_handle_insert_data_all_total');
delete_site_option('laci_handle_insert_data_all_total');
delete_option('laci_delete_shortcode_in_deactivate');
delete_site_option('laci_delete_shortcode_in_deactivate');
delete_option('laci_cron_job_status');
delete_site_option('laci_cron_job_status');
delete_option('laci_version');
delete_site_option('laci_version');
delete_option('laci_handle_insert_data_offset');
delete_site_option('laci_handle_insert_data_offset');
delete_option('laci_last_updated_date');
delete_site_option('laci_last_updated_date');
delete_option('laci_last_updated_time');
delete_site_option('laci_last_updated_time');
delete_option('laci_internallinks_updated_for_taxonomy');
delete_site_option('laci_internallinks_updated_for_taxonomy');
delete_option('laci_num_item_la');
delete_site_option('laci_num_item_la');
delete_option('laci_delete_shortcode_in_delete');
delete_site_option('laci_delete_shortcode_in_delete');
delete_option('laci_license_key');
delete_site_option('laci_license_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('laci_update_post_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'laci_list_key_word' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'laci_list_key_word' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'laci_list_key_word' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'laci_list_key_word' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'laci_main_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'laci_main_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'laci_main_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'laci_main_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'laci_main_term_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'laci_main_term_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'laci_main_term_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'laci_main_term_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'laci_main_post_for_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'laci_main_post_for_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'laci_main_post_for_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'laci_main_post_for_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskeywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );

