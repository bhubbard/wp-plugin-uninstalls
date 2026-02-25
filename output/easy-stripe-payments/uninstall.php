<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('espd_email_notification');
delete_site_option('espd_email_notification');
delete_option('espd_email_subject');
delete_site_option('espd_email_subject');
delete_option('espd_email_sender_mail');
delete_site_option('espd_email_sender_mail');
delete_option('espd_email_mail_content');
delete_site_option('espd_email_mail_content');
delete_option('espd_stripe_public_key');
delete_site_option('espd_stripe_public_key');
delete_option('espad_stripe_metadata_campaign');
delete_site_option('espad_stripe_metadata_campaign');
delete_option('espad_stripe_metadata_project');
delete_site_option('espad_stripe_metadata_project');
delete_option('espad_stripe_metadata_product');
delete_site_option('espad_stripe_metadata_product');
delete_option('espad_currency');
delete_site_option('espad_currency');
delete_option('espad_checkout_form_id');
delete_site_option('espad_checkout_form_id');
delete_option('espd_stripe_secret_key');
delete_site_option('espd_stripe_secret_key');
delete_option('espd_membership_last_check');
delete_site_option('espd_membership_last_check');
delete_option('espd_membership_status');
delete_site_option('espd_membership_status');
delete_option('espd_welcome_page_visited');
delete_site_option('espd_welcome_page_visited');

