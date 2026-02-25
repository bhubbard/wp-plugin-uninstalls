-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'shopybot_api_key', 'shopybot_fb_page_id', 'shopybot_fb_page_name', 'shopybot_shop_token', 'shopybot_connect_fb_page_url', 'shopybot_connect_shop_url', 'shopybot_disconnect_shop_url', 'shopybot_disconnect_fb_page_url', 'shopybot-woocommerce_in_process', 'shopybot-woocommerce_page', 'shopybot-woocommerce_pages', 'shopybot-woocommerce_lock', 'shopybot-woocommerce_get_ids');
DELETE FROM wp_options WHERE option_name LIKE '%_page';
DELETE FROM wp_options WHERE option_name LIKE '%_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_get_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_in_process';
DELETE FROM wp_options WHERE option_name LIKE '%_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_def_vendor';
DELETE FROM wp_options WHERE option_name LIKE '%_filters';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vendor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vendor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vendor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vendor');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_yml_offer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_yml_offer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_yml_offer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_yml_offer';

