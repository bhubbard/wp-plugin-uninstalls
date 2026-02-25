<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('monzurmailer_email_templates');
delete_site_option('monzurmailer_email_templates');
delete_option('monzurmailer_email_logs');
delete_site_option('monzurmailer_email_logs');
delete_option('monzurmailer_from_name');
delete_site_option('monzurmailer_from_name');
delete_option('monzurmailer_from_email');
delete_site_option('monzurmailer_from_email');
delete_option('monzurmailer_footer_note');
delete_site_option('monzurmailer_footer_note');
delete_option('monzurmailer_smtp_enable');
delete_site_option('monzurmailer_smtp_enable');
delete_option('monzurmailer_smtp_host');
delete_site_option('monzurmailer_smtp_host');
delete_option('monzurmailer_smtp_port');
delete_site_option('monzurmailer_smtp_port');
delete_option('monzurmailer_smtp_username');
delete_site_option('monzurmailer_smtp_username');
delete_option('monzurmailer_smtp_password');
delete_site_option('monzurmailer_smtp_password');
delete_option('monzurmailer_smtp_encryption');
delete_site_option('monzurmailer_smtp_encryption');

