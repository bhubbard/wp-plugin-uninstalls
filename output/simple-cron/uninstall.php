<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_cron_plugin');
delete_site_option('simple_cron_plugin');
delete_option('tools_page_cron_table_per_page');
delete_site_option('tools_page_cron_table_per_page');
delete_option('simple_cron_installed');
delete_site_option('simple_cron_installed');

// Delete Transients
delete_transient('simple_security_nag');
delete_site_transient('simple_security_nag');
delete_transient('simple_cron_nag');
delete_site_transient('simple_cron_nag');

