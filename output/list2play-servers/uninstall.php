<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('list2play_api_base_url');
delete_site_option('list2play_api_base_url');
delete_option('list2play_api_token');
delete_site_option('list2play_api_token');
delete_option('list2play_cache_duration');
delete_site_option('list2play_cache_duration');
delete_option('list2play_send_metadata');
delete_site_option('list2play_send_metadata');
delete_option('list2play_default_per_page');
delete_site_option('list2play_default_per_page');
delete_option('list2play_show_hostname');
delete_site_option('list2play_show_hostname');
delete_option('list2play_show_status');
delete_site_option('list2play_show_status');
delete_option('list2play_show_address');
delete_site_option('list2play_show_address');
delete_option('list2play_show_game');
delete_site_option('list2play_show_game');
delete_option('list2play_show_region');
delete_site_option('list2play_show_region');
delete_option('list2play_show_players');
delete_site_option('list2play_show_players');
delete_option('list2play_show_map');
delete_site_option('list2play_show_map');
delete_option('list2play_show_votes');
delete_site_option('list2play_show_votes');
delete_option('list2play_show_chart');
delete_site_option('list2play_show_chart');
delete_option('list2play_show_stats');
delete_site_option('list2play_show_stats');
delete_option('list2play_show_vote_button');
delete_site_option('list2play_show_vote_button');
delete_option('list2play_selected_server_ids');
delete_site_option('list2play_selected_server_ids');
delete_option('list2play_server_order');
delete_site_option('list2play_server_order');

