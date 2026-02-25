<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mxp_pchome2wp_db_version');
delete_site_option('mxp_pchome2wp_db_version');
delete_option('mxp_pchome2wp_user_id');
delete_site_option('mxp_pchome2wp_user_id');
delete_option('mxp_pchome2wp_account');
delete_site_option('mxp_pchome2wp_account');
delete_option('mxp_pchome2wp_pay_user');
delete_site_option('mxp_pchome2wp_pay_user');
delete_option('mxp_pchome2wp_post_tags');
delete_site_option('mxp_pchome2wp_post_tags');
delete_option('mxp_pchome2wp_post_status');
delete_site_option('mxp_pchome2wp_post_status');
delete_option('mxp_pchome2wp_post_author');
delete_site_option('mxp_pchome2wp_post_author');
delete_option('mxp_pchome2wp_post_comment_status');
delete_site_option('mxp_pchome2wp_post_comment_status');
delete_option('mxp_pchome2wp_post_ping_status');
delete_site_option('mxp_pchome2wp_post_ping_status');
delete_option('mxp_pchome2wp_post_type');
delete_site_option('mxp_pchome2wp_post_type');
delete_option('mxp_pchome2wp_post_comment_admin_displayname');
delete_site_option('mxp_pchome2wp_post_comment_admin_displayname');
delete_option('mxp_pchome2wp_post_comment_admin_email');
delete_site_option('mxp_pchome2wp_post_comment_admin_email');
delete_option('mxp_enable_debug');
delete_site_option('mxp_enable_debug');
delete_option('mxp_complete_remove');
delete_site_option('mxp_complete_remove');
delete_option('mxp_pchome2wp_post_category');
delete_site_option('mxp_pchome2wp_post_category');
delete_option('mxp_pchome2wp_agree_terms');
delete_site_option('mxp_pchome2wp_agree_terms');
delete_option('mxp_pchome2wp_auth_token');
delete_site_option('mxp_pchome2wp_auth_token');
delete_option('mxp_pchome2wp_post_quota');
delete_site_option('mxp_pchome2wp_post_quota');
delete_option('mxp_pchome2wp_usage');
delete_site_option('mxp_pchome2wp_usage');
delete_option('mxp_pchome2wp_blogname');
delete_site_option('mxp_pchome2wp_blogname');

