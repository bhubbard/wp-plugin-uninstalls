<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llc_geoip_database_path');
delete_site_option('llc_geoip_database_path');
delete_option('llc_blacklist');
delete_site_option('llc_blacklist');
delete_option('llc_countries');
delete_site_option('llc_countries');
delete_option('limit_login_countries_log');
delete_site_option('limit_login_countries_log');

