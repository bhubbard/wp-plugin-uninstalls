-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xfoy_errors', 'xfoy_settings_arr', 'xfoy_version', 'xfoy_registered_feeds_arr', 'xfoy_keeplogs', 'xfoy_disable_notices', 'xfoy_enable_five_min', 'xfoy_feed_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xfoy_o_yandex_product_category', 'xfoyp_removefromxml', '_xfoy_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('xfoy_o_yandex_product_category', 'xfoyp_removefromxml', '_xfoy_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('xfoy_o_yandex_product_category', 'xfoyp_removefromxml', '_xfoy_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xfoy_o_yandex_product_category', 'xfoyp_removefromxml', '_xfoy_condition');

