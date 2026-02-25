<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpm_connector_connections');
delete_site_option('wpm_connector_connections');
delete_option('wpm_connector_hub_url');
delete_site_option('wpm_connector_hub_url');
delete_option('wpm_connector_token_hash');
delete_site_option('wpm_connector_token_hash');
delete_option('wpm_connector_user_id');
delete_site_option('wpm_connector_user_id');

// Delete Transients
delete_transient('wpm_connector_pairing');
delete_site_transient('wpm_connector_pairing');

