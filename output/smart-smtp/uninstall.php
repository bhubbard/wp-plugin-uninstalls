<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_smtp_mail_configuration');
delete_site_option('smart_smtp_mail_configuration');
delete_option('smart_smtp_secret_key');
delete_site_option('smart_smtp_secret_key');
delete_option('smart_smtp_secret_iv');
delete_site_option('smart_smtp_secret_iv');
delete_option('smart_smtp_provider_type');
delete_site_option('smart_smtp_provider_type');
delete_option('smart_smtp_fallback_provider_type');
delete_site_option('smart_smtp_fallback_provider_type');
delete_option('smart_smtp_is_fallback_enabled');
delete_site_option('smart_smtp_is_fallback_enabled');
delete_option('smart_smtp_brevo_mailer_validation');
delete_site_option('smart_smtp_brevo_mailer_validation');

