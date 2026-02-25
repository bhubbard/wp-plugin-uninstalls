<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('wphrgdpr_consent_quetions');
delete_site_option('wphrgdpr_consent_quetions');
delete_option('wphrgdpr_last_update_post');
delete_site_option('wphrgdpr_last_update_post');
delete_option('wphrgdpr_consent_contents');
delete_site_option('wphrgdpr_consent_contents');
delete_option('wphrgdpr_email_templates_data');
delete_site_option('wphrgdpr_email_templates_data');
delete_option('wphrgdpr_email_templates_label');
delete_site_option('wphrgdpr_email_templates_label');
delete_option('wphrgdpr_page_ids');
delete_site_option('wphrgdpr_page_ids');
delete_option('wphrgdrplite_page_ids');
delete_site_option('wphrgdrplite_page_ids');
delete_option('wphrgdrplite_created_posts');
delete_site_option('wphrgdrplite_created_posts');
delete_option('wphrgdpr_created_posts');
delete_site_option('wphrgdpr_created_posts');
delete_option('wphr_email_settings_data-protection-form');
delete_site_option('wphr_email_settings_data-protection-form');
delete_option('wphr_email_settings_subject-access-request');
delete_site_option('wphr_email_settings_subject-access-request');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_consent_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_consent_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_consent_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_consent_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'post_default_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'post_default_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'post_default_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'post_default_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_answer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_answer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_answer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_answer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_answers_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_answers_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_answers_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_answers_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'value_checked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'value_checked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'value_checked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'value_checked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wphrgdpr_consent_policy_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wphrgdpr_consent_policy_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wphrgdpr_consent_policy_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wphrgdpr_consent_policy_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'field_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'field_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'field_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'field_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_default_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_default_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_default_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_default_answers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_answers_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_answers_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_answers_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_answers_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'model_answers_default_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'model_answers_default_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'model_answers_default_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'model_answers_default_chk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'privacy_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'privacy_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'privacy_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'privacy_answer' ) );

