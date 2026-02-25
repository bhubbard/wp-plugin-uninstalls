<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atbs_oauth_token');
delete_site_option('atbs_oauth_token');
delete_option('atbs_user_identity');
delete_site_option('atbs_user_identity');
delete_option('atbs_guest_identity');
delete_site_option('atbs_guest_identity');
delete_option('atbs_flash_messages');
delete_site_option('atbs_flash_messages');
delete_option('atbs_is_logged_in');
delete_site_option('atbs_is_logged_in');
delete_option('atbs_is_guest_logged_in');
delete_site_option('atbs_is_guest_logged_in');
delete_option('atbs_post_id');
delete_site_option('atbs_post_id');
delete_option('atbs_user_email');
delete_site_option('atbs_user_email');

