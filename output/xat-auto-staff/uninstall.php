<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xas_chat_name');
delete_site_option('xas_chat_name');
delete_option('xas_chat_pass');
delete_site_option('xas_chat_pass');
delete_option('xas_list_member');
delete_site_option('xas_list_member');
delete_option('xas_mainowner_title');
delete_site_option('xas_mainowner_title');
delete_option('xas_owner_title');
delete_site_option('xas_owner_title');
delete_option('xas_mod_title');
delete_site_option('xas_mod_title');
delete_option('xas_member_title');
delete_site_option('xas_member_title');
delete_option('xas_rank_title');
delete_site_option('xas_rank_title');
delete_option('xas_name_title');
delete_site_option('xas_name_title');
delete_option('xas_user_title');
delete_site_option('xas_user_title');
delete_option('xas_main_title');
delete_site_option('xas_main_title');

