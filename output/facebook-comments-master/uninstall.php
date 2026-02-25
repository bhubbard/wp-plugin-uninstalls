<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsm_quote');
delete_site_option('tsm_quote');
delete_option('facebook_comments_master_system_wide_app');
delete_site_option('facebook_comments_master_system_wide_app');
delete_option('facebook_comments_master_system_wide_app_id');
delete_site_option('facebook_comments_master_system_wide_app_id');
delete_option('facebook_comments_master_system_wide_user');
delete_site_option('facebook_comments_master_system_wide_user');
delete_option('facebook_comments_master_system_wide_user_id');
delete_site_option('facebook_comments_master_system_wide_user_id');
delete_option('facebook_comments_master_system_wide_lang');
delete_site_option('facebook_comments_master_system_wide_lang');
delete_option('facebook_comments_master_system_wide_lang_set');
delete_site_option('facebook_comments_master_system_wide_lang_set');

