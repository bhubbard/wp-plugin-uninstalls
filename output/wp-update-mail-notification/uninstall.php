<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awun-is-active');
delete_site_option('awun-is-active');
delete_option('awun-mail');
delete_site_option('awun-mail');
delete_option('awun-mail-headline');
delete_site_option('awun-mail-headline');
delete_option('awun-mail-subtitle');
delete_site_option('awun-mail-subtitle');
delete_option('awun-small-notice');
delete_site_option('awun-small-notice');
delete_option('awun-logo');
delete_site_option('awun-logo');
delete_option('awun-mail-color');
delete_site_option('awun-mail-color');
delete_option('awun-mail-content-header');
delete_site_option('awun-mail-content-header');
delete_option('awun-mail-content-footer');
delete_site_option('awun-mail-content-footer');
delete_option('awun-mail-subject');
delete_site_option('awun-mail-subject');
delete_option('awun-import-text');
delete_site_option('awun-import-text');
delete_option('awun-schedule');
delete_site_option('awun-schedule');
delete_option('awun-export-text');
delete_site_option('awun-export-text');
delete_option('awun-inport-text');
delete_site_option('awun-inport-text');
delete_option('awun_last_sended');
delete_site_option('awun_last_sended');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('awun-scheduled');

