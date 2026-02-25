<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kdmdks_guilty_details');
delete_site_option('kdmdks_guilty_details');
delete_option('kdmdks_guilty');
delete_site_option('kdmdks_guilty');
delete_option('kdmdks_logs');
delete_site_option('kdmdks_logs');
delete_option('kdmdks_settings');
delete_site_option('kdmdks_settings');
delete_option('kdmdks_innocent');
delete_site_option('kdmdks_innocent');

