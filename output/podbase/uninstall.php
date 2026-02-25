<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('podbase_temp_state');
delete_site_option('podbase_temp_state');
delete_option('podbase_temp_state_time');
delete_site_option('podbase_temp_state_time');
delete_option('podbase_temp_state_user_id');
delete_site_option('podbase_temp_state_user_id');
delete_option('podbase_internal_store_id');
delete_site_option('podbase_internal_store_id');
delete_option('podbase_disconnect_token');
delete_site_option('podbase_disconnect_token');
delete_option('podbase_key_id');
delete_site_option('podbase_key_id');
delete_option('podbase_connected');
delete_site_option('podbase_connected');
delete_option('podbase_connection_date');
delete_site_option('podbase_connection_date');
delete_option('podbase_aae_store_url');
delete_site_option('podbase_aae_store_url');

