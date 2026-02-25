<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mlcf_delete_options');
delete_site_option('mlcf_delete_options');
delete_option('mlcf_email');
delete_site_option('mlcf_email');
delete_option('mlcf_subject');
delete_site_option('mlcf_subject');
delete_option('mlcf_email_from');
delete_site_option('mlcf_email_from');
delete_option('mlcf_success_message');
delete_site_option('mlcf_success_message');
delete_option('mlcf_error_message');
delete_site_option('mlcf_error_message');
delete_option('mlcf_error_wrong_mail');
delete_site_option('mlcf_error_wrong_mail');
delete_option('mlcf_field_name');
delete_site_option('mlcf_field_name');
delete_option('mlcf_field_email');
delete_site_option('mlcf_field_email');
delete_option('mlcf_field_subject');
delete_site_option('mlcf_field_subject');
delete_option('mlcf_field_www');
delete_site_option('mlcf_field_www');
delete_option('mlcf_field_message');
delete_site_option('mlcf_field_message');
delete_option('mlcf_field_required');
delete_site_option('mlcf_field_required');
delete_option('mlcf_field_submit');
delete_site_option('mlcf_field_submit');
delete_option('mlcf_recaptcha_enabled');
delete_site_option('mlcf_recaptcha_enabled');
delete_option('mlcf_recaptcha_private');
delete_site_option('mlcf_recaptcha_private');
delete_option('mlcf_recaptcha_public');
delete_site_option('mlcf_recaptcha_public');
delete_option('mlcf_recaptcha_error_msg');
delete_site_option('mlcf_recaptcha_error_msg');
delete_option('mlcf_delete_Options');
delete_site_option('mlcf_delete_Options');

