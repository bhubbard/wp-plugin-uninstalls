<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('riveted_report_interval');
delete_site_option('riveted_report_interval');
delete_option('riveted_idle_timeout');
delete_site_option('riveted_idle_timeout');
delete_option('riveted_noninteraction');
delete_site_option('riveted_noninteraction');

