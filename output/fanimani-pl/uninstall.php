<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fanimaniUuid');
delete_site_option('fanimaniUuid');
delete_option('fanimaniFaniSEOActive');
delete_site_option('fanimaniFaniSEOActive');
delete_option('fanimaniFaniSEOTitle');
delete_site_option('fanimaniFaniSEOTitle');
delete_option('fanimaniFaniSEOColor');
delete_site_option('fanimaniFaniSEOColor');
delete_option('fanimaniFaniSEOBackground');
delete_site_option('fanimaniFaniSEOBackground');
delete_option('fanimaniWidgetActive');
delete_site_option('fanimaniWidgetActive');
delete_option('fanimaniFaniSEOLinks');
delete_site_option('fanimaniFaniSEOLinks');
delete_option('fanimaniFaniSEOUpdate');
delete_site_option('fanimaniFaniSEOUpdate');

// Clear Cron Jobs
wp_clear_scheduled_hook('fanimaniFaniSEOUpdate');

