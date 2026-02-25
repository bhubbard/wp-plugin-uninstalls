<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpabstracts_submit_limit');
delete_site_option('wpabstracts_submit_limit');
delete_option('wpabstracts_show_description');
delete_site_option('wpabstracts_show_description');
delete_option('wpabstracts_editor_media');
delete_site_option('wpabstracts_editor_media');
delete_option('wpabstracts_author_instructions');
delete_site_option('wpabstracts_author_instructions');
delete_option('wpabstracts_chars_count');
delete_site_option('wpabstracts_chars_count');
delete_option('wpabstracts_show_keywords');
delete_site_option('wpabstracts_show_keywords');
delete_option('wpabstracts_show_attachments');
delete_site_option('wpabstracts_show_attachments');
delete_option('wpabstracts_permitted_attachments');
delete_site_option('wpabstracts_permitted_attachments');
delete_option('wpabstracts_max_attach_size');
delete_site_option('wpabstracts_max_attach_size');
delete_option('wpabstracts_upload_limit');
delete_site_option('wpabstracts_upload_limit');
delete_option('wpabstracts_attachment_pref');
delete_site_option('wpabstracts_attachment_pref');
delete_option('wpabstracts_show_conditions');
delete_site_option('wpabstracts_show_conditions');
delete_option('wpabstracts_terms_conditions');
delete_site_option('wpabstracts_terms_conditions');
delete_option('wpabstracts_show_author');
delete_site_option('wpabstracts_show_author');
delete_option('wpabstracts_show_presenter');
delete_site_option('wpabstracts_show_presenter');
delete_option('wpabstracts_presenter_preference');
delete_site_option('wpabstracts_presenter_preference');
delete_option('wpabstracts_abstracts_columns');
delete_site_option('wpabstracts_abstracts_columns');
delete_option('wpabstracts_accepted_shortcode');
delete_site_option('wpabstracts_accepted_shortcode');
delete_option('wpabstracts_edit_status');
delete_site_option('wpabstracts_edit_status');
delete_option('wpabstracts_change_ownership');
delete_site_option('wpabstracts_change_ownership');
delete_option('wpabstracts_blind_review');
delete_site_option('wpabstracts_blind_review');
delete_option('wpabstracts_reviewer_submit');
delete_site_option('wpabstracts_reviewer_submit');
delete_option('wpabstracts_pdf_options');
delete_site_option('wpabstracts_pdf_options');
delete_option('wpabstracts_default_status');
delete_site_option('wpabstracts_default_status');
delete_option('wpabstracts_sync_status');
delete_site_option('wpabstracts_sync_status');
delete_option('wpabstracts_accepted_status');
delete_site_option('wpabstracts_accepted_status');
delete_option('wpabstracts_show_reviews');
delete_site_option('wpabstracts_show_reviews');
delete_option('wpabstracts_event_id');
delete_site_option('wpabstracts_event_id');
delete_option('wpabstracts_dashboard_id');
delete_site_option('wpabstracts_dashboard_id');
delete_option('wpabstracts_enable_register');
delete_site_option('wpabstracts_enable_register');
delete_option('wpabstracts_frontend_dashboard');
delete_site_option('wpabstracts_frontend_dashboard');
delete_option('wpabstracts_show_adminbar');
delete_site_option('wpabstracts_show_adminbar');
delete_option('wpabstracts_captcha');
delete_site_option('wpabstracts_captcha');
delete_option('wpabstracts_login_redirect');
delete_site_option('wpabstracts_login_redirect');
delete_option('wpabstracts_captcha_secret');
delete_site_option('wpabstracts_captcha_secret');
delete_option('wpabstracts_registration_form');
delete_site_option('wpabstracts_registration_form');
delete_option('wpabstracts_user_settings');
delete_site_option('wpabstracts_user_settings');
delete_option('wpabstracts_admin_emails');
delete_site_option('wpabstracts_admin_emails');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpabstracts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpabstracts_email_admin');
delete_site_option('wpabstracts_email_admin');
delete_option('wpabstracts_email_author');
delete_site_option('wpabstracts_email_author');
delete_option('wpabstracts_reviewer_edit');
delete_site_option('wpabstracts_reviewer_edit');
delete_option('wpabstracts_submission_notification');
delete_site_option('wpabstracts_submission_notification');
delete_option('wpabstracts_edit_notification');
delete_site_option('wpabstracts_edit_notification');
delete_option('wpabstracts_review_notification');
delete_site_option('wpabstracts_review_notification');
delete_option('wpabstracts_status_notification');
delete_site_option('wpabstracts_status_notification');
delete_option('wpabstracts_submit_templateId');
delete_site_option('wpabstracts_submit_templateId');
delete_option('wpabstracts_author_edit_templateId');
delete_site_option('wpabstracts_author_edit_templateId');
delete_option('wpabstracts_admin_templateId');
delete_site_option('wpabstracts_admin_templateId');
delete_option('wpabstracts_admin_edit_templateId');
delete_site_option('wpabstracts_admin_edit_templateId');
delete_option('wpabstracts_approval_templateId');
delete_site_option('wpabstracts_approval_templateId');
delete_option('wpabstracts_rejected_templateId');
delete_site_option('wpabstracts_rejected_templateId');
delete_option('wpabstracts_underreview_templateId');
delete_site_option('wpabstracts_underreview_templateId');
delete_option('wpabstracts_version');
delete_site_option('wpabstracts_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpabstracts_enable_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpabstracts_enable_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpabstracts_enable_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpabstracts_enable_notification' ) );

