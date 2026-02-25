<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reword_plugin_version');
delete_site_option('reword_plugin_version');
delete_option('reword_reports_min');
delete_site_option('reword_reports_min');
delete_option('reword_icon_pos');
delete_site_option('reword_icon_pos');
delete_option('reword_notice_banner');
delete_site_option('reword_notice_banner');
delete_option('reword_email_new');
delete_site_option('reword_email_new');
delete_option('reword_access_cap');
delete_site_option('reword_access_cap');
delete_option('reword_send_stats');
delete_site_option('reword_send_stats');
delete_option('reword_banner_pos');
delete_site_option('reword_banner_pos');

