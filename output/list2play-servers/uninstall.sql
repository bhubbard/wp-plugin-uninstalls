-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('list2play_api_base_url', 'list2play_api_token', 'list2play_cache_duration', 'list2play_send_metadata', 'list2play_default_per_page', 'list2play_show_hostname', 'list2play_show_status', 'list2play_show_address', 'list2play_show_game', 'list2play_show_region', 'list2play_show_players', 'list2play_show_map', 'list2play_show_votes', 'list2play_show_chart', 'list2play_show_stats', 'list2play_show_vote_button', 'list2play_selected_server_ids', 'list2play_server_order');

