-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsf_block_version', 'vsf_block_bounce_address', 'vsf_block_max_hits_in_one_minute', 'vsf_block_max_hits_in_two_minute', 'vsf_block_max_hits_in_five_minute', 'vsf_block_init_hook_added', 'vsf_block_admin_panel_hook_added', 'vsf_block_auto_block', 'vsf_block_table_items_quantity', 'vsf_block_hits_table_version', 'vsf_block_table_version', 'vsf_block_rules_table_version', 'vsf_block_url_table_version', 'vsf_block_cookie_rules', 'vsf_block_cookie_urls', 'vsf_block_cookie_expire_time', 'vsf_stats_version');

