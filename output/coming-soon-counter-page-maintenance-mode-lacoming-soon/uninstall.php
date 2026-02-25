<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lasoon_queue_flush_rewrite_rules');
delete_site_option('lasoon_queue_flush_rewrite_rules');
delete_option('lasoon_back_image_for_email');
delete_site_option('lasoon_back_image_for_email');
delete_option('lasoon_logo');
delete_site_option('lasoon_logo');
delete_option('lasoon_heading_title_for_email');
delete_site_option('lasoon_heading_title_for_email');
delete_option('lasoon_heading_subtitle_for_email');
delete_site_option('lasoon_heading_subtitle_for_email');
delete_option('lasoon_button_text_for_email');
delete_site_option('lasoon_button_text_for_email');
delete_option('lasoon_maintenance_mode');
delete_site_option('lasoon_maintenance_mode');
delete_option('lcm_notice');
delete_site_option('lcm_notice');
delete_option('subscription_email_list');
delete_site_option('subscription_email_list');
delete_option('lasoon_subject_for_email');
delete_site_option('lasoon_subject_for_email');
delete_option('lasoon_back_animation');
delete_site_option('lasoon_back_animation');
delete_option('lasoon_launch_date');
delete_site_option('lasoon_launch_date');
delete_option('lasoon_seo_title');
delete_site_option('lasoon_seo_title');
delete_option('lasoon_meta_robot');
delete_site_option('lasoon_meta_robot');
delete_option('lasoon_shape_animation');
delete_site_option('lasoon_shape_animation');
delete_option('lasoon_exclude_frontend');
delete_site_option('lasoon_exclude_frontend');
delete_option('lasoon_exclude_backend');
delete_site_option('lasoon_exclude_backend');
delete_option('lasoon_contact_us');
delete_site_option('lasoon_contact_us');
delete_option('lasoon_countdown_enable');
delete_site_option('lasoon_countdown_enable');
delete_option('lasoon_blog_layout');
delete_site_option('lasoon_blog_layout');
delete_option('lasoon_heading_animation');
delete_site_option('lasoon_heading_animation');
delete_option('lasoon_about_show');
delete_site_option('lasoon_about_show');
delete_option('lasoon_git_show');
delete_site_option('lasoon_git_show');
delete_option('lasoon_sidebar');
delete_site_option('lasoon_sidebar');
delete_option('lasoon_about_head');
delete_site_option('lasoon_about_head');
delete_option('lasoon_about_desc');
delete_site_option('lasoon_about_desc');
delete_option('lasoon_git_head');
delete_site_option('lasoon_git_head');
delete_option('lasoon_git_desc');
delete_site_option('lasoon_git_desc');
delete_option('lasoon_git_contact');
delete_site_option('lasoon_git_contact');
delete_option('lasoon_git_email');
delete_site_option('lasoon_git_email');
delete_option('lasoon_git_address');
delete_site_option('lasoon_git_address');
delete_option('lasoon_heading_text');
delete_site_option('lasoon_heading_text');
delete_option('lasoon_subtitle_enable');
delete_site_option('lasoon_subtitle_enable');
delete_option('lasoon_heading_subtitle');
delete_site_option('lasoon_heading_subtitle');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_social_link' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lasoon_footer_copyright');
delete_site_option('lasoon_footer_copyright');
delete_option('lasoon_background_type');
delete_site_option('lasoon_background_type');
delete_option('lasoon_back_1_image');
delete_site_option('lasoon_back_1_image');
delete_option('lasoon_back_2_image');
delete_site_option('lasoon_back_2_image');
delete_option('lasoon_back_3_image');
delete_site_option('lasoon_back_3_image');
delete_option('lasoon_background_video_type');
delete_site_option('lasoon_background_video_type');
delete_option('lasoon_back_video');
delete_site_option('lasoon_back_video');
delete_option('lasoon_embed_url');
delete_site_option('lasoon_embed_url');

