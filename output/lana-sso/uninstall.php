<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_sso_client_id');
delete_site_option('lana_sso_client_id');
delete_option('lana_sso_client_secret');
delete_site_option('lana_sso_client_secret');
delete_option('lana_sso_authorize_url');
delete_site_option('lana_sso_authorize_url');
delete_option('lana_sso_token_url');
delete_site_option('lana_sso_token_url');
delete_option('lana_sso_resource_url');
delete_site_option('lana_sso_resource_url');

