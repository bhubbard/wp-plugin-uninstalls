<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssh_sftp_updater_support_dismiss_page_notice_until');
delete_site_option('ssh_sftp_updater_support_dismiss_page_notice_until');
delete_option('ftp_credentials');
delete_site_option('ftp_credentials');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ssh_sftp_updater_support_dismiss_dash_notice_until');
delete_site_option('ssh_sftp_updater_support_dismiss_dash_notice_until');

