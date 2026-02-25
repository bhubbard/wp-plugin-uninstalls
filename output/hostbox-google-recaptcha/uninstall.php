<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hostbox_recaptcha_site_key');
delete_site_option('hostbox_recaptcha_site_key');
delete_option('hostbox_recaptcha_secret_key');
delete_site_option('hostbox_recaptcha_secret_key');
delete_option('hostbox_recaptcha_version');
delete_site_option('hostbox_recaptcha_version');
delete_option('hostbox_recaptcha_min_score');
delete_site_option('hostbox_recaptcha_min_score');
delete_option('hostbox_recaptcha_just_activated');
delete_site_option('hostbox_recaptcha_just_activated');

