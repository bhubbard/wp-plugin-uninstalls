-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wshop_order_last_view', 'wshop_plugins_installed', 'page_xh_wshop_account_my_orders', 'wshop_addons_versions', 'wechat_token', 'xh_install_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'wshop-ajax:service:extensions:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wshop_download_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wshop_download_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wshop_download_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wshop_download_link');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'link_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'link_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'link_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'link_%';

