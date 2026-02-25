<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SHA_SECRET_KEY');
delete_site_option('SHA_SECRET_KEY');
delete_option('SHA_SECRET_IV');
delete_site_option('SHA_SECRET_IV');
delete_option('WPSA_API_KEY');
delete_site_option('WPSA_API_KEY');
delete_option('IGNORE_FILES');
delete_site_option('IGNORE_FILES');
delete_option('TAG_FREQUENCY');
delete_site_option('TAG_FREQUENCY');
delete_option('SESSION_DURATION');
delete_site_option('SESSION_DURATION');
delete_option('COOKIE');
delete_site_option('COOKIE');
delete_option('IP_STRING');
delete_site_option('IP_STRING');
delete_option('IGNORE_BOTS');
delete_site_option('IGNORE_BOTS');
delete_option('ANONYMIZE_IP');
delete_site_option('ANONYMIZE_IP');
delete_option('STOP_LOGGING');
delete_site_option('STOP_LOGGING');
delete_option('VISITOR_COUNT');
delete_site_option('VISITOR_COUNT');
delete_option('REFRESH_TODAYS_LOG_DURATION');
delete_site_option('REFRESH_TODAYS_LOG_DURATION');
delete_option('MAX_CACHE_RECORDS');
delete_site_option('MAX_CACHE_RECORDS');
delete_option('MAX_DATABASE_RECORDS');
delete_site_option('MAX_DATABASE_RECORDS');

