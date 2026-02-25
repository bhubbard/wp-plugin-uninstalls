<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genius_ale_domain');
delete_site_option('genius_ale_domain');
delete_option('genius_ale_tsid');
delete_site_option('genius_ale_tsid');
delete_option('genius_ale_api_key');
delete_site_option('genius_ale_api_key');
delete_option('genius_ale_api_secret');
delete_site_option('genius_ale_api_secret');
delete_option('genius_ale_api_remind');
delete_site_option('genius_ale_api_remind');
delete_option('genius_ale_preserve_tracking');
delete_site_option('genius_ale_preserve_tracking');
delete_option('genius_ale_urls_on_click');
delete_site_option('genius_ale_urls_on_click');
delete_option('genius_ale_db_version');
delete_site_option('genius_ale_db_version');
delete_option('genius_ale_liking');
delete_site_option('genius_ale_liking');
delete_option('genius_ale_dismiss_feedback');
delete_site_option('genius_ale_dismiss_feedback');
delete_option('genius_ale_install_date');
delete_site_option('genius_ale_install_date');
delete_option('Test Option');
delete_site_option('Test Option');
delete_option('georiot_tsid');
delete_site_option('georiot_tsid');
delete_option('georiot_api_key');
delete_site_option('georiot_api_key');
delete_option('georiot_api_secret');
delete_site_option('georiot_api_secret');
delete_option('georiot_api_remind');
delete_site_option('georiot_api_remind');
delete_option('georiot_preserve_tracking');
delete_site_option('georiot_preserve_tracking');

