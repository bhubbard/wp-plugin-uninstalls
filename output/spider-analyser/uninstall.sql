-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_spider_info', 'wb_spider_analyser_ver', 'wb_spider_analyser_promote', 'sp_an_max_id', 'sync_wb_spider', 'wb_spider_analyser_db_ver', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ver';
DELETE FROM wp_options WHERE option_name LIKE 'wb_spider_analyser_cnf_%';

