<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdtocas_site_password');
delete_site_option('wpdtocas_site_password');
delete_option('wpdtocas_redirect_settings');
delete_site_option('wpdtocas_redirect_settings');
delete_option('wpdtocas_rss_disabled');
delete_site_option('wpdtocas_rss_disabled');
delete_option('wpdtocas_emojis_disabled');
delete_site_option('wpdtocas_emojis_disabled');
delete_option('wpdtocas_dashicons_disabled');
delete_site_option('wpdtocas_dashicons_disabled');
delete_option('wpdtocas_jquery_migrate_disabled');
delete_site_option('wpdtocas_jquery_migrate_disabled');
delete_option('wpdtocas_heartbeat_admin');
delete_site_option('wpdtocas_heartbeat_admin');
delete_option('wpdtocas_heartbeat_frontend');
delete_site_option('wpdtocas_heartbeat_frontend');
delete_option('wpdtocas_heartbeat_editor');
delete_site_option('wpdtocas_heartbeat_editor');
delete_option('wpdtocas_disable_post_comments');
delete_site_option('wpdtocas_disable_post_comments');
delete_option('wpdtocas_disable_page_comments');
delete_site_option('wpdtocas_disable_page_comments');
delete_option('wpdtocas_disable_attachment_comments');
delete_site_option('wpdtocas_disable_attachment_comments');
delete_option('wpdtocas_hide_post_comments');
delete_site_option('wpdtocas_hide_post_comments');
delete_option('wpdtocas_hide_page_comments');
delete_site_option('wpdtocas_hide_page_comments');
delete_option('wpdtocas_hide_attachment_comments');
delete_site_option('wpdtocas_hide_attachment_comments');
delete_option('wpdtocas_db_error');
delete_site_option('wpdtocas_db_error');
delete_option('wpdtocas_disable_rsd');
delete_site_option('wpdtocas_disable_rsd');
delete_option('wpdtocas_disable_wlw');
delete_site_option('wpdtocas_disable_wlw');
delete_option('wpdtocas_disable_embeds');
delete_site_option('wpdtocas_disable_embeds');
delete_option('wpdtocas_limit_login_attempts');
delete_site_option('wpdtocas_limit_login_attempts');
delete_option('wpdtocas_max_login_attempts');
delete_site_option('wpdtocas_max_login_attempts');
delete_option('wpdtocas_lockout_time');
delete_site_option('wpdtocas_lockout_time');
delete_option('wpdtocas_disable_author_archives');
delete_site_option('wpdtocas_disable_author_archives');
delete_option('wpdtocas_custom_author_base_enabled');
delete_site_option('wpdtocas_custom_author_base_enabled');
delete_option('wpdtocas_custom_author_base');
delete_site_option('wpdtocas_custom_author_base');
delete_option('wpdtocas_disable_enumeration');
delete_site_option('wpdtocas_disable_enumeration');
delete_option('wpdtocas_disable_rest_users');
delete_site_option('wpdtocas_disable_rest_users');
delete_option('wpdtocas_custom_login_enabled');
delete_site_option('wpdtocas_custom_login_enabled');
delete_option('wpdtocas_custom_login_slug');
delete_site_option('wpdtocas_custom_login_slug');
delete_option('wpdtocas_hide_admin_bar');
delete_site_option('wpdtocas_hide_admin_bar');
delete_option('wpdtocas_enable_duplicator');
delete_site_option('wpdtocas_enable_duplicator');
delete_option('wpdtocas_custom_login_logo');
delete_site_option('wpdtocas_custom_login_logo');
delete_option('wpdtocas_disable_theme_editor');
delete_site_option('wpdtocas_disable_theme_editor');
delete_option('wpdtocas_disable_plugin_editor');
delete_site_option('wpdtocas_disable_plugin_editor');
delete_option('wpdtocas_disable_gutenberg');
delete_site_option('wpdtocas_disable_gutenberg');
delete_option('wpdtocas_password_protect');
delete_site_option('wpdtocas_password_protect');
delete_option('wpdtocas_custom_redirect');
delete_site_option('wpdtocas_custom_redirect');
delete_option('wpdtocas_under_maintenance');
delete_site_option('wpdtocas_under_maintenance');
delete_option('wpdtocas_last_optimization_run');
delete_site_option('wpdtocas_last_optimization_run');
delete_option('wpdtocas_scheduled_optimization_enabled');
delete_site_option('wpdtocas_scheduled_optimization_enabled');
delete_option('wpdtocas_scheduled_optimization_type');
delete_site_option('wpdtocas_scheduled_optimization_type');
delete_option('wpdtocas_scheduled_optimization_options');
delete_site_option('wpdtocas_scheduled_optimization_options');
delete_option('wpdtocas_comments_disabled');
delete_site_option('wpdtocas_comments_disabled');
delete_option('jethost_total_care_headers_migrated');
delete_site_option('jethost_total_care_headers_migrated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpdtocas_login_attempts_%', '_site_transient_wpdtocas_login_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpdtocas_locked_%', '_site_transient_wpdtocas_locked_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpdtocas_scheduled_optimization');

