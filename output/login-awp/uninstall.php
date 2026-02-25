<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_awp_feedback_email');
delete_site_option('login_awp_feedback_email');
delete_option('login_awp_feedback_webhook');
delete_site_option('login_awp_feedback_webhook');

