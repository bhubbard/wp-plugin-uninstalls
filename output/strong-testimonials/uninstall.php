<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmtst_admin_notices');
delete_site_option('wpmtst_admin_notices');
delete_option('wpmtst_plugin_version');
delete_site_option('wpmtst_plugin_version');
delete_option('wpmtst_options');
delete_site_option('wpmtst_options');
delete_option('wpmtst_config_errors');
delete_site_option('wpmtst_config_errors');
delete_option('wpmtst-challenge');
delete_site_option('wpmtst-challenge');
delete_option('wpmtst_view_options');
delete_site_option('wpmtst_view_options');
delete_option('strong-testimonials-rate-time');
delete_site_option('strong-testimonials-rate-time');
delete_option('wpmtst_history');
delete_site_option('wpmtst_history');
delete_option('wpmtst_fields');
delete_site_option('wpmtst_fields');
delete_option('wpmtst_base_forms');
delete_site_option('wpmtst_base_forms');
delete_option('wpmtst_custom_forms');
delete_site_option('wpmtst_custom_forms');
delete_option('wpmtst_form_options');
delete_site_option('wpmtst_form_options');
delete_option('wpmtst_compat_options');
delete_site_option('wpmtst_compat_options');
delete_option('wpmtst_view_default');
delete_site_option('wpmtst_view_default');
delete_option('wpmtst_cycle');
delete_site_option('wpmtst_cycle');
delete_option('wpmtst_l10n_contexts');
delete_site_option('wpmtst_l10n_contexts');
delete_option('wpmtst_news_flag');
delete_site_option('wpmtst_news_flag');
delete_option('wpmtst_addons');
delete_site_option('wpmtst_addons');
delete_option('wpmtst_update_log');
delete_site_option('wpmtst_update_log');
delete_option('wpmtst_db_version');
delete_site_option('wpmtst_db_version');
delete_option('strong_testimonials_license_key');
delete_site_option('strong_testimonials_license_key');
delete_option('strong_testimonials_license_status');
delete_site_option('strong_testimonials_license_status');
delete_option('wpmtst_sticky_views');
delete_site_option('wpmtst_sticky_views');
delete_option('hicpo_options');
delete_site_option('hicpo_options');
delete_option('scporder_options');
delete_site_option('scporder_options');
delete_option('strong_testimonials_advanced_settings');
delete_site_option('strong_testimonials_advanced_settings');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_strong-testimonials-view-widget');
delete_site_option('widget_strong-testimonials-view-widget');
delete_option('widget_custom_html');
delete_site_option('widget_custom_html');
delete_option('widget_black-studio-tinymce');
delete_site_option('widget_black-studio-tinymce');
delete_option('wpmtst_importer_options');
delete_site_option('wpmtst_importer_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('strong_testimonials_all_extensions');
delete_site_transient('strong_testimonials_all_extensions');
delete_transient('wpmtst_update_in_progress');
delete_site_transient('wpmtst_update_in_progress');
delete_transient('strong-testimonials_upgradable_packages');
delete_site_transient('strong-testimonials_upgradable_packages');
delete_transient('wpmtst_mail_queue');
delete_site_transient('wpmtst_mail_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'submit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'submit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'submit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'submit_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'metaboxhidden_wpm-testimonial' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'metaboxhidden_wpm-testimonial' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'metaboxhidden_wpm-testimonial' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'metaboxhidden_wpm-testimonial' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nofollow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'noopener' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'noopener' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'noopener' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'noopener' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'noreferrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'noreferrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'noreferrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'noreferrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'strong_view_list_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'strong_view_list_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'strong_view_list_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'strong_view_list_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'platform_user_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'platform_user_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'platform_user_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'platform_user_photo' ) );

