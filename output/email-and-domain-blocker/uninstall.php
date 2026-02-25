<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blocked_domains');
delete_site_option('blocked_domains');
delete_option('blocked_emails');
delete_site_option('blocked_emails');
delete_option('edb_enable_logging');
delete_site_option('edb_enable_logging');

