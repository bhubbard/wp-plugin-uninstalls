<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_elew_wc_log_email_settings');
delete_site_option('rs_elew_wc_log_email_settings');
delete_option('rs_elew_wc_log_email');
delete_site_option('rs_elew_wc_log_email');

