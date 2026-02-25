<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PlayMe_recaptcha_sitekey');
delete_site_option('PlayMe_recaptcha_sitekey');
delete_option('PlayMe_recaptcha_secretkey');
delete_site_option('PlayMe_recaptcha_secretkey');

// Delete Transients
delete_transient('playme_requests');
delete_site_transient('playme_requests');

