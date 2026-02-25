<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sesn_email_templates');
delete_site_option('sesn_email_templates');

// Clear Cron Jobs

