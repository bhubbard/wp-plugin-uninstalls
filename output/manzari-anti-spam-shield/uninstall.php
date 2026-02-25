<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('manzari_bad_words');
delete_site_option('manzari_bad_words');
delete_option('manzari_enable_recaptcha');
delete_site_option('manzari_enable_recaptcha');
delete_option('manzari_recaptcha_sitekey');
delete_site_option('manzari_recaptcha_sitekey');
delete_option('manzari_recaptcha_secret');
delete_site_option('manzari_recaptcha_secret');
delete_option('manzari_spam_blocked_total');
delete_site_option('manzari_spam_blocked_total');
delete_option('manzari_recaptcha_type');
delete_site_option('manzari_recaptcha_type');
delete_option('manzari_email_alerts');
delete_site_option('manzari_email_alerts');

