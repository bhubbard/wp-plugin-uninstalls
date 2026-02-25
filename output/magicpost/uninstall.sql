-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_magicpost_baidu_api_token', 'cht_option', 'dlip_option', 'wb_magicpost_ver', 'wb_magicpost_promote', 'magicpost_move', 'magicpost_schedule', 'dwqr_option', 'magicpost_translate_error', 'magicpost_translate', 'update_plugins', 'magicpost_move_query', 'magicpost_move_tag_post_query');
DELETE FROM wp_options WHERE option_name LIKE 'wb_magicpost_cnf_%';
DELETE FROM wp_options WHERE option_name LIKE '%ver';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wbmpbdfydocid', 'post_downs', 'vk_price', 'wb_dl_type', 'wb_dl_mode', 'dwqr_like', 'm-p-t-s');
DELETE FROM wp_usermeta WHERE meta_key IN ('wbmpbdfydocid', 'post_downs', 'vk_price', 'wb_dl_type', 'wb_dl_mode', 'dwqr_like', 'm-p-t-s');
DELETE FROM wp_termmeta WHERE meta_key IN ('wbmpbdfydocid', 'post_downs', 'vk_price', 'wb_dl_type', 'wb_dl_mode', 'dwqr_like', 'm-p-t-s');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wbmpbdfydocid', 'post_downs', 'vk_price', 'wb_dl_type', 'wb_dl_mode', 'dwqr_like', 'm-p-t-s');

