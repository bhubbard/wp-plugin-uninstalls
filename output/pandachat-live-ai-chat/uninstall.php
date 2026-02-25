<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pandachat_connected');
delete_site_option('pandachat_connected');
delete_option('pandachat_connection_date');
delete_site_option('pandachat_connection_date');
delete_option('pandachat_channel_id');
delete_site_option('pandachat_channel_id');
delete_option('pandachat_endpoint');
delete_site_option('pandachat_endpoint');
delete_option('pandachat_embed_link');
delete_site_option('pandachat_embed_link');
delete_option('pandachat_widget_code');
delete_site_option('pandachat_widget_code');
delete_option('pandachat_connection_token');
delete_site_option('pandachat_connection_token');
delete_option('pandachat_public_key');
delete_site_option('pandachat_public_key');

