-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ticker_pro_options', '$options', 'map_option_1', 'map_option_2', 'map_option_3', 'map_option_4', 'map_option_5', 'map_option_6', 'ticker_pro_6489_db_version', '$ticker_pro_6489_db_version');

