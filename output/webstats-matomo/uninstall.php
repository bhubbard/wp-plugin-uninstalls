<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webstats_matomo_version');
delete_site_option('webstats_matomo_version');
delete_option('webstats_matomo_enable_matomo');
delete_site_option('webstats_matomo_enable_matomo');
delete_option('webstats_matomo_enable_proxy');
delete_site_option('webstats_matomo_enable_proxy');
delete_option('webstats_matomo_enable_cookie');
delete_site_option('webstats_matomo_enable_cookie');
delete_option('webstats_matomo_site_id');
delete_site_option('webstats_matomo_site_id');
delete_option('webstats_matomo_matomo_url');
delete_site_option('webstats_matomo_matomo_url');
delete_option('webstats_matomo_auth_token');
delete_site_option('webstats_matomo_auth_token');

