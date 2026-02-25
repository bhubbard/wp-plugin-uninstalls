-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextlnl_options_version', 'daextlnl_load_momentjs', 'daextlnl_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_database_version';
DELETE FROM wp_options WHERE option_name LIKE '%_tickers_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_featured_news_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_sliding_news_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_assets_mode';
DELETE FROM wp_options WHERE option_name LIKE 'daextlnl_ticker_%';

