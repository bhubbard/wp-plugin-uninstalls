<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('et_fc');
delete_site_option('et_fc');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('envo_plugin_do_activation_redirect');
delete_site_option('envo_plugin_do_activation_redirect');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('kirki_downloaded_font_files');
delete_site_option('kirki_downloaded_font_files');
delete_option('envo_extra_actions_dismiss');
delete_site_option('envo_extra_actions_dismiss');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('envothemes_active_time');
delete_site_option('envothemes_active_time');
delete_option('envothemes_active_pro_time');
delete_site_option('envothemes_active_pro_time');
delete_option('envothemes_demo_import_url');
delete_site_option('envothemes_demo_import_url');
delete_option('envothemes_activation_redirect');
delete_site_option('envothemes_activation_redirect');
delete_option('envothemes_maybe_later');
delete_site_option('envothemes_maybe_later');
delete_option('envothemes_review_dismiss');
delete_site_option('envothemes_review_dismiss');
delete_option('elementor_onboarded');
delete_site_option('elementor_onboarded');
delete_option('active_envo_one_time');
delete_site_option('active_envo_one_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('_wc_needs_pages');
delete_site_option('_wc_needs_pages');
delete_option('woocommerce_single_image_width');
delete_site_option('woocommerce_single_image_width');
delete_option('woocommerce_thumbnail_image_width');
delete_site_option('woocommerce_thumbnail_image_width');
delete_option('woocommerce_thumbnail_cropping');
delete_site_option('woocommerce_thumbnail_cropping');
delete_option('woocommerce_thumbnail_cropping_custom_width');
delete_site_option('woocommerce_thumbnail_cropping_custom_width');
delete_option('woocommerce_thumbnail_cropping_custom_height');
delete_site_option('woocommerce_thumbnail_cropping_custom_height');
delete_option('elementor_container_width');
delete_site_option('elementor_container_width');
delete_option('elementor_experiment-container');
delete_site_option('elementor_experiment-container');

// Delete Transients
delete_transient('kirki_googlefonts_cache');
delete_site_transient('kirki_googlefonts_cache');
delete_transient('kirki_googlefont_names_cache');
delete_site_transient('kirki_googlefont_names_cache');
delete_transient('kirki_remote_url_contents');
delete_site_transient('kirki_remote_url_contents');
delete_transient('_wc_activation_redirect');
delete_site_transient('_wc_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'envo_extra_meta_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'envo_extra_meta_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'envo_extra_meta_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'envo_extra_meta_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'envo_extra_hide_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'envo_extra_hide_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'envo_extra_hide_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'envo_extra_hide_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'envo_extra_hide_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'envo_extra_hide_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'envo_extra_hide_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'envo_extra_hide_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'envo_extra_transparent_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'envo_extra_transparent_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'envo_extra_transparent_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'envo_extra_transparent_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'envo_extra_header_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'envo_extra_header_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'envo_extra_header_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'envo_extra_header_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

