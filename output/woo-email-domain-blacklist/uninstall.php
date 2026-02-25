<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foa_wc_email_blacklist');
delete_site_option('foa_wc_email_blacklist');

// Clear Cron Jobs
wp_clear_scheduled_hook('wedb_check_external_domain_update');

