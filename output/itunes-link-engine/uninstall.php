<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genius_ile_domain');
delete_site_option('genius_ile_domain');
delete_option('genius_ile_tsid');
delete_site_option('genius_ile_tsid');
delete_option('genius_ile_api_key');
delete_site_option('genius_ile_api_key');
delete_option('genius_ile_api_secret');
delete_site_option('genius_ile_api_secret');
delete_option('genius_ile_api_remind');
delete_site_option('genius_ile_api_remind');
delete_option('genius_ile_db_version');
delete_site_option('genius_ile_db_version');
delete_option('genius_ile_liking');
delete_site_option('genius_ile_liking');
delete_option('genius_ile_dismiss_feedback');
delete_site_option('genius_ile_dismiss_feedback');
delete_option('genius_ile_install_date');
delete_site_option('genius_ile_install_date');
delete_option('genius_ile_urls_on_click');
delete_site_option('genius_ile_urls_on_click');
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

