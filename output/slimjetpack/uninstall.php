<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_options');
delete_site_option('jetpack_options');
delete_option('jetpack_id');
delete_site_option('jetpack_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('jetpack_log');
delete_site_option('jetpack_log');
delete_option('stats_options');
delete_site_option('stats_options');
delete_option('open_graph_protocol_site_type');
delete_site_option('open_graph_protocol_site_type');
delete_option('facebook_admins');
delete_site_option('facebook_admins');
delete_option('carousel_enable_it');
delete_site_option('carousel_enable_it');
delete_option('carousel_display_exif');
delete_site_option('carousel_display_exif');
delete_option('carousel_display_geo');
delete_site_option('carousel_display_geo');
delete_option('carousel_background_color');
delete_site_option('carousel_background_color');
delete_option('safecss_preview_rev');
delete_site_option('safecss_preview_rev');
delete_option('safecss_add');
delete_site_option('safecss_add');
delete_option('safecss_content_width');
delete_site_option('safecss_content_width');
delete_option('safecss_rev');
delete_site_option('safecss_rev');
delete_option('safecss_preview_add');
delete_site_option('safecss_preview_add');
delete_option('safecss_revision_migrated');
delete_site_option('safecss_revision_migrated');
delete_option('safecss');
delete_site_option('safecss');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rev' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nova_menu_order');
delete_site_option('nova_menu_order');
delete_option('jetpack_testimonial');
delete_site_option('jetpack_testimonial');
delete_option('gravatar_disable_hovercards');
delete_site_option('gravatar_disable_hovercards');
delete_option('wp_mobile_disable');
delete_site_option('wp_mobile_disable');
delete_option('wp_mobile_custom_css');
delete_site_option('wp_mobile_custom_css');
delete_option('wp_mobile_featured_images');
delete_site_option('wp_mobile_featured_images');
delete_option('wp_mobile_excerpt');
delete_site_option('wp_mobile_excerpt');
delete_option('wp_mobile_static_front_page');
delete_site_option('wp_mobile_static_front_page');
delete_option('wp_mobile_header_color');
delete_site_option('wp_mobile_header_color');
delete_option('wp_mobile_app_promos');
delete_site_option('wp_mobile_app_promos');
delete_option('sharedaddy_disable_resources');
delete_site_option('sharedaddy_disable_resources');
delete_option('sharing-options');
delete_site_option('sharing-options');
delete_option('sharing-services');
delete_site_option('sharing-services');
delete_option('text_direction');
delete_site_option('text_direction');
delete_option('polldaddy_load_poll_inline');
delete_site_option('polldaddy_load_poll_inline');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'soundcloud_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embed_size_w');
delete_site_option('embed_size_w');
delete_option('embed_autourls');
delete_site_option('embed_autourls');
delete_option('featured-content');
delete_site_option('featured-content');
delete_option('tiled_galleries');
delete_site_option('tiled_galleries');
delete_option('video_player_freedom');
delete_site_option('video_player_freedom');
delete_option('video_player_high_quality');
delete_site_option('video_player_high_quality');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jetpack_register');
delete_site_option('jetpack_register');
delete_option('jetpack_activated');
delete_site_option('jetpack_activated');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('jetpack_do_activate');
delete_site_option('jetpack_do_activate');
delete_option('jetpack_was_activated');
delete_site_option('jetpack_was_activated');
delete_option('jetpack_auto_installed');
delete_site_option('jetpack_auto_installed');

// Delete Transients
delete_transient('jetpack_https_test');
delete_site_transient('jetpack_https_test');
delete_transient('jetpack_has_identity_crisis');
delete_site_transient('jetpack_has_identity_crisis');
delete_transient('jetpack-testimonial-count-cache');
delete_site_transient('jetpack-testimonial-count-cache');
delete_transient('featured_content_ids');
delete_site_transient('featured_content_ids');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp-site-info-%', '_site_transient_wp-site-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp-post-info-%', '_site_transient_wp-post-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('jetpack_register');
delete_site_transient('jetpack_register');

// Clear Cron Jobs
wp_clear_scheduled_hook('jetpack_clean_nonces');
wp_clear_scheduled_hook('jetpack_sync_all_registered_options');
wp_clear_scheduled_hook('grunion_scheduled_delete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'jetpack_json_api_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'jetpack_json_api_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'jetpack_json_api_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'jetpack_json_api_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'publicize_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'publicize_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'publicize_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'publicize_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vimeo_poster_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vimeo_poster_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vimeo_poster_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vimeo_poster_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_akismet_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_akismet_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_akismet_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_akismet_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_author_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_author_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_author_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_author_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_contact_form_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_contact_form_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_contact_form_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_contact_form_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedback_all_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedback_all_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedback_all_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedback_all_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'custom_css_add' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'custom_css_add' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'custom_css_add' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'custom_css_add' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'custom_css_preprocessor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'custom_css_preprocessor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'custom_css_preprocessor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'custom_css_preprocessor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nova_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nova_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nova_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nova_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sharing_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sharing_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sharing_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sharing_disabled' ) );

