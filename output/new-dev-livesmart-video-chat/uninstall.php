<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livesmart_css');
delete_site_option('livesmart_css');
delete_option('livesmart_front_message');
delete_site_option('livesmart_front_message');
delete_option('livesmart_names');
delete_site_option('livesmart_names');
delete_option('livesmart_avatar');
delete_site_option('livesmart_avatar');
delete_option('livesmart_server_url');
delete_site_option('livesmart_server_url');

