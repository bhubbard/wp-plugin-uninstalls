<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spinupwp_cf_email');
delete_site_option('spinupwp_cf_email');
delete_option('spinupwp_cf_zone_id');
delete_site_option('spinupwp_cf_zone_id');
delete_option('spinupwp_cf_api_key');
delete_site_option('spinupwp_cf_api_key');
delete_option('spinupwp_cf_api_key_legacy');
delete_site_option('spinupwp_cf_api_key_legacy');
delete_option('spinupwp_cf_auth_type');
delete_site_option('spinupwp_cf_auth_type');
delete_option('spinupwp_cf_purge_enabled');
delete_site_option('spinupwp_cf_purge_enabled');

