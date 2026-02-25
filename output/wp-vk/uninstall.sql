-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_vk_ver', 'wp_vk_db_ver', 'vk_pay_conf', 'wbm-cnf');
DELETE FROM wp_options WHERE option_name LIKE 'wp_vk_ver_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vk_price', '_wp_page_template', 'wb_down_price', 'wb_dl_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('vk_price', '_wp_page_template', 'wb_down_price', 'wb_dl_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('vk_price', '_wp_page_template', 'wb_down_price', 'wb_dl_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vk_price', '_wp_page_template', 'wb_down_price', 'wb_dl_mode');

