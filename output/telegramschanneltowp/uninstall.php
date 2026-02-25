<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('API_Key');
delete_site_option('API_Key');
delete_option('Channels_username');
delete_site_option('Channels_username');
delete_option('MaxHeight');
delete_site_option('MaxHeight');
delete_option('Background');
delete_site_option('Background');

