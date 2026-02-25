<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setupad_notice_date');
delete_site_option('setupad_notice_date');
delete_option('setupad_plugin_review_reminder_shown');
delete_site_option('setupad_plugin_review_reminder_shown');
delete_option('setupad_db_version');
delete_site_option('setupad_db_version');

