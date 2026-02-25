<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stcfq_redirect_to_settings');
delete_site_option('stcfq_redirect_to_settings');
delete_option('stcfq_form_fields');
delete_site_option('stcfq_form_fields');
delete_option('stcfq_consent_field');
delete_site_option('stcfq_consent_field');
delete_option('stcfq_submit_button');
delete_site_option('stcfq_submit_button');
delete_option('stcfq_feedback_messages');
delete_site_option('stcfq_feedback_messages');
delete_option('stcfq_layout');
delete_site_option('stcfq_layout');
delete_option('stcfq_design');
delete_site_option('stcfq_design');
delete_option('stcfq_captcha');
delete_site_option('stcfq_captcha');
delete_option('stcfq_google_recaptcha_v2');
delete_site_option('stcfq_google_recaptcha_v2');
delete_option('stcfq_cf_turnstile');
delete_site_option('stcfq_cf_turnstile');
delete_option('stcfq_block_keywords');
delete_site_option('stcfq_block_keywords');
delete_option('stcfq_email_carrier');
delete_site_option('stcfq_email_carrier');
delete_option('stcfq_wp_mail');
delete_site_option('stcfq_wp_mail');
delete_option('stcfq_smtp');
delete_site_option('stcfq_smtp');
delete_option('stcfq_email_to_admin');
delete_site_option('stcfq_email_to_admin');
delete_option('stcfq_delete_data_enable');
delete_site_option('stcfq_delete_data_enable');

// Delete Transients
delete_transient('stcfq_unanswered_messages_count');
delete_site_transient('stcfq_unanswered_messages_count');

