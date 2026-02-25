<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcf_recaptcha_apikey');
delete_site_option('mcf_recaptcha_apikey');
delete_option('mcf_recaptcha_secret');
delete_site_option('mcf_recaptcha_secret');
delete_option('mcf_sender_email');
delete_site_option('mcf_sender_email');
delete_option('mcf_recipient_email');
delete_site_option('mcf_recipient_email');

