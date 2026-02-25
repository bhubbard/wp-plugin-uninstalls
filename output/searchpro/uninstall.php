<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('berq_opt_mode');
delete_site_option('berq_opt_mode');
delete_option('berqwp_enable_sandbox');
delete_site_option('berqwp_enable_sandbox');
delete_option('berqwp_optimize_post_types');
delete_site_option('berqwp_optimize_post_types');
delete_option('berqwp_cache_rules');
delete_site_option('berqwp_cache_rules');
delete_option('berqwp_license_key');
delete_site_option('berqwp_license_key');
delete_option('berqwp_can_use_fluid_images');
delete_site_option('berqwp_can_use_fluid_images');
delete_option('berqwp_cf_creden');
delete_site_option('berqwp_cf_creden');
delete_option('berqwp_enable_cache_for_loggedin');
delete_site_option('berqwp_enable_cache_for_loggedin');
delete_option('berqwp_cache_lifespan');
delete_site_option('berqwp_cache_lifespan');
delete_option('berqwp_webp_max_width');
delete_site_option('berqwp_webp_max_width');
delete_option('berqwp_webp_quality');
delete_site_option('berqwp_webp_quality');
delete_option('bwp_require_flush_cache');
delete_site_option('bwp_require_flush_cache');
delete_option('berqwp_image_lazyloading');
delete_site_option('berqwp_image_lazyloading');
delete_option('berqwp_disable_webp');
delete_site_option('berqwp_disable_webp');
delete_option('berqwp_fluid_images');
delete_site_option('berqwp_fluid_images');
delete_option('berqwp_enable_cdn');
delete_site_option('berqwp_enable_cdn');
delete_option('berqwp_enable_cwv');
delete_site_option('berqwp_enable_cwv');
delete_option('berqwp_preload_cookiebanner');
delete_site_option('berqwp_preload_cookiebanner');
delete_option('berqwp_preload_fontfaces');
delete_site_option('berqwp_preload_fontfaces');
delete_option('berqwp_disable_emojis');
delete_site_option('berqwp_disable_emojis');
delete_option('berqwp_lazyload_youtube_embed');
delete_site_option('berqwp_lazyload_youtube_embed');
delete_option('berqwp_preload_yt_poster');
delete_site_option('berqwp_preload_yt_poster');
delete_option('berqwp_javascript_execution_mode');
delete_site_option('berqwp_javascript_execution_mode');
delete_option('berqwp_optimize_taxonomies');
delete_site_option('berqwp_optimize_taxonomies');
delete_option('berqwp_interaction_delay');
delete_site_option('berqwp_interaction_delay');
delete_option('berq_exclude_cdn');
delete_site_option('berq_exclude_cdn');
delete_option('berq_exclude_urls');
delete_site_option('berq_exclude_urls');
delete_option('berq_ignore_urls_params');
delete_site_option('berq_ignore_urls_params');
delete_option('berq_exclude_js_css');
delete_site_option('berq_exclude_js_css');
delete_option('berq_css_optimization');
delete_site_option('berq_css_optimization');
delete_option('berq_js_optimization');
delete_site_option('berq_js_optimization');
delete_option('berqwp_sync_addons');
delete_site_option('berqwp_sync_addons');
delete_option('berqwp_server_queue');
delete_site_option('berqwp_server_queue');
delete_option('bwph_max_beats_per_minute');
delete_site_option('bwph_max_beats_per_minute');
delete_option('berqwp_uploaded_assets');
delete_site_option('berqwp_uploaded_assets');
delete_option('berqwp_optimize_queue');
delete_site_option('berqwp_optimize_queue');
delete_option('berqwp_site_url');
delete_site_option('berqwp_site_url');
delete_option('berqwp_custom_cache_header');
delete_site_option('berqwp_custom_cache_header');
delete_option('bwp_quit_feedback');
delete_site_option('bwp_quit_feedback');
delete_option('berqwp_post_type_names');
delete_site_option('berqwp_post_type_names');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('ewww_image_optimizer_lazy_load');
delete_site_option('ewww_image_optimizer_lazy_load');
delete_option('berqwp_product_sale_check');
delete_site_option('berqwp_product_sale_check');

// Delete Transients
delete_transient('berq_lic_response_cache');
delete_site_transient('berq_lic_response_cache');
delete_transient('berqwp_connection_status');
delete_site_transient('berqwp_connection_status');
delete_transient('bqwp_hide_feedback_notice');
delete_site_transient('bqwp_hide_feedback_notice');
delete_transient('berqwp_redirect');
delete_site_transient('berqwp_redirect');
delete_transient('berq_purge_page_notice');
delete_site_transient('berq_purge_page_notice');
delete_transient('berq_force_cache_notice');
delete_site_transient('berq_force_cache_notice');
delete_transient('berq_purge_cdn_notice');
delete_site_transient('berq_purge_cdn_notice');
delete_transient('berq_purge_site_notice');
delete_site_transient('berq_purge_site_notice');
delete_transient('berq_purge_criticalcss_notice');
delete_site_transient('berq_purge_criticalcss_notice');
delete_transient('berq_cache_cleared_notice');
delete_site_transient('berq_cache_cleared_notice');
delete_transient('berq_cache_warmup_notice');
delete_site_transient('berq_cache_warmup_notice');
delete_transient('berqwp_warmup_running');
delete_site_transient('berqwp_warmup_running');
delete_transient('cache_warmup_in_progress');
delete_site_transient('cache_warmup_in_progress');
delete_transient('berqwp_doing_cache_warmup');
delete_site_transient('berqwp_doing_cache_warmup');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bwp_warmup_lock_%', '_site_transient_bwp_warmup_lock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('berqwp_connection_status_sl');
delete_site_transient('berqwp_connection_status_sl');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );

