<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_notice');
delete_site_option('show_notice');
delete_option('current_date');
delete_site_option('current_date');
delete_option('week_notice_date');
delete_site_option('week_notice_date');

