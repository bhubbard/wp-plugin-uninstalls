<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_message_allow_attachment');
delete_site_option('hp_message_allow_attachment');
delete_option('hp_message_refresh_interval');
delete_site_option('hp_message_refresh_interval');
delete_option('hp_message_enable_storage');
delete_site_option('hp_message_enable_storage');
delete_option('hp_message_blocked_keywords');
delete_site_option('hp_message_blocked_keywords');
delete_option('hp_message_attachment_types');
delete_site_option('hp_message_attachment_types');
delete_option('hp_message_expiration_period');
delete_site_option('hp_message_expiration_period');
delete_option('hp_message_storage_period');
delete_site_option('hp_message_storage_period');
delete_option('hp_message_allow_monitoring');
delete_site_option('hp_message_allow_monitoring');
delete_option('hp_message_allow_deletion');
delete_site_option('hp_message_allow_deletion');
delete_option('hp_user_enable_display');
delete_site_option('hp_user_enable_display');

