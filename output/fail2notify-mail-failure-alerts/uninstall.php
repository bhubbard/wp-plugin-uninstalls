<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fail2notify_settings');
delete_site_option('fail2notify_settings');
delete_option('fail2notify_logs');
delete_site_option('fail2notify_logs');

