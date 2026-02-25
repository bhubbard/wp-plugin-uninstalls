<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('sa_wp_mail_failed_reason');
delete_site_transient('sa_wp_mail_failed_reason');

