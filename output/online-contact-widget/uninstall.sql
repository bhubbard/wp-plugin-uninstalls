-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_ocw_ver', 'ocw_db_ver', 'wb_ocw_promote', 'wb_item_faqs', 'wbm-cnf');
DELETE FROM wp_options WHERE option_name LIKE 'wb_ocw_cnf_%';
DELETE FROM wp_options WHERE option_name LIKE '%ver';

