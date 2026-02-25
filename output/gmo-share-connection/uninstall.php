<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmo_share_connection_single');
delete_site_option('gmo_share_connection_single');
delete_option('gmo_share_connection_page');
delete_site_option('gmo_share_connection_page');
delete_option('gmo_share_connection_home');
delete_site_option('gmo_share_connection_home');
delete_option('gmo_share_connection_before_content');
delete_site_option('gmo_share_connection_before_content');
delete_option('gmo_share_connection_after_content');
delete_site_option('gmo_share_connection_after_content');
delete_option('gmo_share_connection_socials');
delete_site_option('gmo_share_connection_socials');

