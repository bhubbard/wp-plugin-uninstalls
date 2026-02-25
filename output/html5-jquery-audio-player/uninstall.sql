-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmp_player_db_table_version', 'hmp_player_db_table_rating_version', 'buy_text', 'color', 'showlist', 'showbuy', 'hmp_description', 'currency', 'tracks', 'tcolor', 'autoplay');

