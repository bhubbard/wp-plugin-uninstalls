-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmapblock_ablocks_install_notice_hidden', 'kodezen_black_friday_notice', 'wp_map_block_first_install_time', 'insightsforwp_sent_data', 'wp_map_block_version');

