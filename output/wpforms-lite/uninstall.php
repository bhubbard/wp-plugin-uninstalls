<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpforms_builder_opened_date');
delete_site_option('wpforms_builder_opened_date');
delete_option('wpforms_rotation_activated_plugins');
delete_site_option('wpforms_rotation_activated_plugins');
delete_option('wpforms_admin_notices');
delete_site_option('wpforms_admin_notices');
delete_option('wpforms_activated');
delete_site_option('wpforms_activated');
delete_option('wpforms_constant_contact');
delete_site_option('wpforms_constant_contact');
delete_option('wpforms_settings');
delete_site_option('wpforms_settings');
delete_option('wpforms_activation_redirect');
delete_site_option('wpforms_activation_redirect');
delete_option('wpforms_forms_first_created');
delete_site_option('wpforms_forms_first_created');
delete_option('wpforms_install');
delete_site_option('wpforms_install');
delete_option('wpforms_version');
delete_site_option('wpforms_version');
delete_option('wpforms_version_lite');
delete_site_option('wpforms_version_lite');
delete_option('wpforms_license');
delete_site_option('wpforms_license');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('wpforms_providers');
delete_site_option('wpforms_providers');
delete_option('wpforms_constant_contact_signup');
delete_site_option('wpforms_constant_contact_signup');
delete_option('wpforms_lite_settings_upgrade');
delete_site_option('wpforms_lite_settings_upgrade');
delete_option('wpforms_challenge');
delete_site_option('wpforms_challenge');
delete_option('wpforms_notifications');
delete_site_option('wpforms_notifications');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_source' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_mail_smtp_source');
delete_site_option('wp_mail_smtp_source');
delete_option('wp_mail_smtp_activation_prevent_redirect');
delete_site_option('wp_mail_smtp_activation_prevent_redirect');
delete_option('uap_automator_settings');
delete_site_option('uap_automator_settings');
delete_option('uncannyautomator_source');
delete_site_option('uncannyautomator_source');
delete_option('uncannyautomator_date');
delete_site_option('uncannyautomator_date');
delete_option('wpforms_splash_version');
delete_site_option('wpforms_splash_version');
delete_option('wpforms_imported');
delete_site_option('wpforms_imported');
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('ninja_forms_settings');
delete_site_option('ninja_forms_settings');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpforms_email_summaries_shown_notifications');
delete_site_option('wpforms_email_summaries_shown_notifications');
delete_option('wpforms_crypto_secret_key');
delete_site_option('wpforms_crypto_secret_key');
delete_option('fresh_site');
delete_site_option('fresh_site');
delete_option('wpforms_square_connections');
delete_site_option('wpforms_square_connections');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpforms_pointers');
delete_site_option('wpforms_pointers');
delete_option('wpforms_connect_token');
delete_site_option('wpforms_connect_token');
delete_option('wpforms_connect');
delete_site_option('wpforms_connect');
delete_option('wpforms_review');
delete_site_option('wpforms_review');
delete_option('wpconsent_activated');
delete_site_option('wpconsent_activated');
delete_option('sugar_calendar_activated_time');
delete_site_option('sugar_calendar_activated_time');
delete_option('duplicator_install_info');
delete_site_option('duplicator_install_info');
delete_option('duplicator_pro_install_info');
delete_site_option('duplicator_pro_install_info');
delete_option('uncanny_automator_v6_options_migrated');
delete_site_option('uncanny_automator_v6_options_migrated');
delete_option('wpforms_preview_page');
delete_site_option('wpforms_preview_page');

// Delete Transients
delete_transient('wpforms_activation_redirect');
delete_site_transient('wpforms_activation_redirect');
delete_transient('wpforms_just_activated');
delete_site_transient('wpforms_just_activated');
delete_transient('wpforms_dash_widget_lite_entries_by_form');
delete_site_transient('wpforms_dash_widget_lite_entries_by_form');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('wpforms_lite_just_activated');
delete_site_transient('wpforms_lite_just_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpforms_email_summaries_cron');
wp_clear_scheduled_hook('wpforms_weekly_entries_count_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_builder_settings_collapsable_block_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_builder_settings_collapsable_block_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_builder_settings_collapsable_block_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_builder_settings_collapsable_block_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_builder_notification_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_builder_notification_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_builder_notification_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_builder_notification_states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_zapier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_zapier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_zapier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_zapier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_dash_widget_graph_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_dash_widget_graph_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_dash_widget_graph_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_dash_widget_graph_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_revisions_disabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_revisions_disabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_revisions_disabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_revisions_disabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpforms_builder_ai_form_chat_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpforms_builder_ai_form_chat_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpforms_builder_ai_form_chat_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpforms_builder_ai_form_chat_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week_skip_trends' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week_skip_trends' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week_skip_trends' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_entries_count_previous_week_skip_trends' ) );

