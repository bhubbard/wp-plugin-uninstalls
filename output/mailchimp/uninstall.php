<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc_interest_groups');
delete_site_option('mc_interest_groups');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mc_show_interest_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mc_merge_vars');
delete_site_option('mc_merge_vars');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mc_mv_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mc_list_id');
delete_site_option('mc_list_id');
delete_option('mc_header_content');
delete_site_option('mc_header_content');
delete_option('mc_subheader_content');
delete_site_option('mc_subheader_content');
delete_option('mc_submit_text');
delete_site_option('mc_submit_text');
delete_option('mc_use_unsub_link');
delete_site_option('mc_use_unsub_link');
delete_option('mc_update_existing');
delete_site_option('mc_update_existing');
delete_option('mc_double_optin');
delete_site_option('mc_double_optin');
delete_option('mc_custom_style');
delete_site_option('mc_custom_style');
delete_option('mailchimp_sf_lists');
delete_site_option('mailchimp_sf_lists');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mailchimp_sf_merge_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mc_user');
delete_site_option('mc_user');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mailchimp_sf_interest_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mailchimp_sf_last_sync_time');
delete_site_option('mailchimp_sf_last_sync_time');
delete_option('mailchimp_sf_user_sync_start_cta_shown');
delete_site_option('mailchimp_sf_user_sync_start_cta_shown');
delete_option('mailchimp_sf_waiting_for_login');
delete_site_option('mailchimp_sf_waiting_for_login');
delete_option('mc_api_key');
delete_site_option('mc_api_key');
delete_option('mc_nuke_all_styles');
delete_site_option('mc_nuke_all_styles');
delete_option('mc_form_border_width');
delete_site_option('mc_form_border_width');
delete_option('mc_form_border_color');
delete_site_option('mc_form_border_color');
delete_option('mc_form_text_color');
delete_site_option('mc_form_text_color');
delete_option('mc_form_background');
delete_site_option('mc_form_background');
delete_option('mailchimp_sf_access_token');
delete_site_option('mailchimp_sf_access_token');
delete_option('mailchimp_sf_auth_error');
delete_site_option('mailchimp_sf_auth_error');
delete_option('mc_datacenter');
delete_site_option('mc_datacenter');
delete_option('mailchimp_sf_user_sync_running');
delete_site_option('mailchimp_sf_user_sync_running');
delete_option('mc_merge_field_migrate');
delete_site_option('mc_merge_field_migrate');
delete_option('mc_list_name');
delete_site_option('mc_list_name');
delete_option('mc_email_type_option');
delete_site_option('mc_email_type_option');
delete_option('mc_version');
delete_site_option('mc_version');
delete_option('mc_rewards');
delete_site_option('mc_rewards');

// Delete Transients
delete_transient('mailchimp_sf_oauth_secret');
delete_site_transient('mailchimp_sf_oauth_secret');
delete_transient('mailchimp_sf_cancel_user_sync_process');
delete_site_transient('mailchimp_sf_cancel_user_sync_process');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

