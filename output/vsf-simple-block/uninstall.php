<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vsf_block_version');
delete_site_option('vsf_block_version');
delete_option('vsf_block_bounce_address');
delete_site_option('vsf_block_bounce_address');
delete_option('vsf_block_max_hits_in_one_minute');
delete_site_option('vsf_block_max_hits_in_one_minute');
delete_option('vsf_block_max_hits_in_two_minute');
delete_site_option('vsf_block_max_hits_in_two_minute');
delete_option('vsf_block_max_hits_in_five_minute');
delete_site_option('vsf_block_max_hits_in_five_minute');
delete_option('vsf_block_init_hook_added');
delete_site_option('vsf_block_init_hook_added');
delete_option('vsf_block_admin_panel_hook_added');
delete_site_option('vsf_block_admin_panel_hook_added');
delete_option('vsf_block_auto_block');
delete_site_option('vsf_block_auto_block');
delete_option('vsf_block_table_items_quantity');
delete_site_option('vsf_block_table_items_quantity');
delete_option('vsf_block_hits_table_version');
delete_site_option('vsf_block_hits_table_version');
delete_option('vsf_block_table_version');
delete_site_option('vsf_block_table_version');
delete_option('vsf_block_rules_table_version');
delete_site_option('vsf_block_rules_table_version');
delete_option('vsf_block_url_table_version');
delete_site_option('vsf_block_url_table_version');
delete_option('vsf_block_cookie_rules');
delete_site_option('vsf_block_cookie_rules');
delete_option('vsf_block_cookie_urls');
delete_site_option('vsf_block_cookie_urls');
delete_option('vsf_block_cookie_expire_time');
delete_site_option('vsf_block_cookie_expire_time');
delete_option('vsf_stats_version');
delete_site_option('vsf_stats_version');

