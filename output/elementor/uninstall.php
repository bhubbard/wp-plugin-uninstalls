<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_tracker_notice');
delete_site_option('elementor_tracker_notice');
delete_option('elementor_local_google_fonts');
delete_site_option('elementor_local_google_fonts');
delete_option('elementor_beta');
delete_site_option('elementor_beta');
delete_option('elementor_element_cache_ttl');
delete_site_option('elementor_element_cache_ttl');
delete_option('_elementor_pro_license_v2_data');
delete_site_option('_elementor_pro_license_v2_data');
delete_option('elementor_enable_inspector');
delete_site_option('elementor_enable_inspector');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('elementor_css_print_method');
delete_site_option('elementor_css_print_method');
delete_option('_elementor_local_google_fonts');
delete_site_option('_elementor_local_google_fonts');
delete_option('elementor_disable_color_schemes');
delete_site_option('elementor_disable_color_schemes');
delete_option('elementor_disable_typography_schemes');
delete_site_option('elementor_disable_typography_schemes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'elementor_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('elementor_log');
delete_site_option('elementor_log');
delete_option('elementor_icon_manager_needs_update');
delete_site_option('elementor_icon_manager_needs_update');
delete_option('elementor_load_fa4_shim');
delete_site_option('elementor_load_fa4_shim');
delete_option('elementor_elements_usage');
delete_site_option('elementor_elements_usage');
delete_option('_elementor_general_settings');
delete_site_option('_elementor_general_settings');
delete_option('elementor_space_between_widgets');
delete_site_option('elementor_space_between_widgets');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_experiment-ai-layout');
delete_site_option('elementor_experiment-ai-layout');
delete_option('elementor_experiment-block_editor_assets_optimize');
delete_site_option('elementor_experiment-block_editor_assets_optimize');
delete_option('elementor_experiment-container_grid');
delete_site_option('elementor_experiment-container_grid');
delete_option('elementor_experiment-display-conditions');
delete_site_option('elementor_experiment-display-conditions');
delete_option('elementor_experiment-e_dom_optimization');
delete_site_option('elementor_experiment-e_dom_optimization');
delete_option('elementor_experiment-e_global_styleguide');
delete_site_option('elementor_experiment-e_global_styleguide');
delete_option('elementor_experiment-e_image_loading_optimization');
delete_site_option('elementor_experiment-e_image_loading_optimization');
delete_option('elementor_experiment-e_lazyload');
delete_site_option('elementor_experiment-e_lazyload');
delete_option('elementor_experiment-e_optimized_assets_loading');
delete_site_option('elementor_experiment-e_optimized_assets_loading');
delete_option('elementor_experiment-e_optimized_css_loading');
delete_site_option('elementor_experiment-e_optimized_css_loading');
delete_option('elementor_experiment-e_scroll_snap');
delete_site_option('elementor_experiment-e_scroll_snap');
delete_option('elementor_experiment-floating-buttons');
delete_site_option('elementor_experiment-floating-buttons');
delete_option('elementor_experiment-form-submissions');
delete_site_option('elementor_experiment-form-submissions');
delete_option('elementor_experiment-link-in-bio');
delete_site_option('elementor_experiment-link-in-bio');
delete_option('elementor_experiment-loop');
delete_site_option('elementor_experiment-loop');
delete_option('elementor_experiment-notes');
delete_site_option('elementor_experiment-notes');
delete_option('elementor_experiment-off-canvas');
delete_site_option('elementor_experiment-off-canvas');
delete_option('elementor_experiment-page-transitions');
delete_site_option('elementor_experiment-page-transitions');
delete_option('elementor_experiment-search');
delete_site_option('elementor_experiment-search');
delete_option('elementor_experiment-taxonomy-filter');
delete_site_option('elementor_experiment-taxonomy-filter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_access_token' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('elementor_edit_buttons');
delete_site_option('elementor_edit_buttons');
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
delete_option('elementor_google_font');
delete_site_option('elementor_google_font');
delete_option('elementor_font_display');
delete_site_option('elementor_font_display');
delete_option('_elementor_installed_time');
delete_site_option('_elementor_installed_time');
delete_option('elementor_cpt_support');
delete_site_option('elementor_cpt_support');
delete_option('elementor_allow_tracking');
delete_site_option('elementor_allow_tracking');
delete_option('elementor_tracker_last_send');
delete_site_option('elementor_tracker_last_send');
delete_option('elementor_allow_tracking_last_update');
delete_site_option('elementor_allow_tracking_last_update');
delete_option('elementor_exclude_user_roles');
delete_site_option('elementor_exclude_user_roles');
delete_option('elementor_google_maps_api_key');
delete_site_option('elementor_google_maps_api_key');
delete_option('elementor_disabled_elements');
delete_site_option('elementor_disabled_elements');
delete_option('elementor_meta_generator_tag');
delete_site_option('elementor_meta_generator_tag');
delete_option('elementor_optimized_gutenberg_loading');
delete_site_option('elementor_optimized_gutenberg_loading');
delete_option('elementor_optimized_image_loading');
delete_site_option('elementor_optimized_image_loading');
delete_option('elementor_lazy_load_background_images');
delete_site_option('elementor_lazy_load_background_images');
delete_option('elementor_safe_mode');
delete_site_option('elementor_safe_mode');
delete_option('elementor_safe_mode_created_mu_dir');
delete_site_option('elementor_safe_mode_created_mu_dir');
delete_option('elementor_safe_mode_allowed_plugins');
delete_site_option('elementor_safe_mode_allowed_plugins');
delete_option('theme_mods_elementor-safe');
delete_site_option('theme_mods_elementor-safe');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('elementor_connect_site_key');
delete_site_option('elementor_connect_site_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%welcome_screen_completed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%dismiss_connect_alert' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%editor_update_notification_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('elementor_activation_redirect');
delete_site_transient('elementor_activation_redirect');
delete_transient('elementor_ea11y_campaign');
delete_site_transient('elementor_ea11y_campaign');
delete_transient('elementor_image_optimization_campaign');
delete_site_transient('elementor_image_optimization_campaign');
delete_transient('elementor_site_mailer_campaign');
delete_site_transient('elementor_site_mailer_campaign');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('elementor_core_campaign');
delete_site_transient('elementor_core_campaign');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_elementor_rollback_versions_%', '_site_transient_elementor_rollback_versions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('elementor_pro_free_trial_data');
delete_site_transient('elementor_pro_free_trial_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('elementor/tracker/send_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_oembed_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_oembed_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_oembed_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_oembed_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_source_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_source_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_source_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_source_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_elementor_connect_common_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_elementor_connect_common_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_elementor_connect_common_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_elementor_connect_common_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_e_notifications_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_e_notifications_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_e_notifications_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_e_notifications_dismissed' ) );

