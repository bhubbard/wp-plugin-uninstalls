<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter_integration_for_mailman3_options');
delete_site_option('newsletter_integration_for_mailman3_options');
delete_option('newsletter_integration_for_mailman3_captchasecret');
delete_site_option('newsletter_integration_for_mailman3_captchasecret');
delete_option('newsletter_integration_for_mailman3_captchasitekey');
delete_site_option('newsletter_integration_for_mailman3_captchasitekey');
delete_option('newsletter_integration_for_mailman3_mailman_email');
delete_site_option('newsletter_integration_for_mailman3_mailman_email');

