<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prosolwpclient_additionalsite');
delete_site_option('prosolwpclient_additionalsite');
delete_option('prosolwpclient_frontend');
delete_site_option('prosolwpclient_frontend');
delete_option('prosolwpclient_sync_time');
delete_site_option('prosolwpclient_sync_time');
delete_option('prosolwpclient_api_config');
delete_site_option('prosolwpclient_api_config');
delete_option('prosolwpclient_designtemplate');
delete_site_option('prosolwpclient_designtemplate');
delete_option('prosolwpclient_encryptionkey');
delete_site_option('prosolwpclient_encryptionkey');
delete_option('prosolwpclient_languages');
delete_site_option('prosolwpclient_languages');
delete_option('prosolwpclient_vectorkey');
delete_site_option('prosolwpclient_vectorkey');
delete_option('prosolwpclient_applicationform');
delete_site_option('prosolwpclient_applicationform');
delete_option('prosolwpclient_privacypolicy');
delete_site_option('prosolwpclient_privacypolicy');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_ajax_proSol_dailytask_tableJobs');

