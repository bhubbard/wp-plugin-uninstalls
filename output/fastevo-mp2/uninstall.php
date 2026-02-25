<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastevo_mp2_api_key');
delete_site_option('fastevo_mp2_api_key');
delete_option('fastevo_mp2_storage_method');
delete_site_option('fastevo_mp2_storage_method');

// Delete Transients
delete_transient('fastevo_mp2_api_key_error');
delete_site_transient('fastevo_mp2_api_key_error');
delete_transient('fastevo_mp2_api_key_success');
delete_site_transient('fastevo_mp2_api_key_success');

