<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('topdawg_merchant_id');
delete_site_option('topdawg_merchant_id');
delete_option('topdawg_api_key');
delete_site_option('topdawg_api_key');
delete_option('topdawg_credentials_sent');
delete_site_option('topdawg_credentials_sent');

// Delete Transients
delete_transient('topdawg_plain_api_key_temp');
delete_site_transient('topdawg_plain_api_key_temp');
delete_transient('topdawg_plugin_deactivating');
delete_site_transient('topdawg_plugin_deactivating');

