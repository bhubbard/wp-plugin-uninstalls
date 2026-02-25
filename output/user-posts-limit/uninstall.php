<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upl_rules_count');
delete_site_option('upl_rules_count');
delete_option('upl_message');
delete_site_option('upl_message');
delete_option('upl_notice');
delete_site_option('upl_notice');
delete_option('upl_priority');
delete_site_option('upl_priority');
delete_option('upl_manage_cap');
delete_site_option('upl_manage_cap');
delete_option('upl_user_role');
delete_site_option('upl_user_role');
delete_option('upl_posts_type');
delete_site_option('upl_posts_type');
delete_option('upl_num_limit');
delete_site_option('upl_num_limit');
delete_option('upl_period');
delete_site_option('upl_period');
delete_option('add_new_users');
delete_site_option('add_new_users');
delete_option('upl_site_rules_count');
delete_site_option('upl_site_rules_count');
delete_option('upl_site_user_role');
delete_site_option('upl_site_user_role');
delete_option('upl_site_posts_type');
delete_site_option('upl_site_posts_type');
delete_option('upl_site_num_limit');
delete_site_option('upl_site_num_limit');
delete_option('upl_site_period');
delete_site_option('upl_site_period');

