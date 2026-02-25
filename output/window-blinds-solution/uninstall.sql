-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmfm_is_blinds_order_placed', 'bmfm_freemium_page_id', 'bmfm_shop_blinds_page_id', 'bmfm_shop_accessories_page_id', 'bmfm_settings_resetted', 'woocommerce_email_from_address', 'woocommerce_email_from_name', 'woocommerce_currency', 'bmfm_stored_data', 'bmfm_plugin_status', 'bmfm_plugin_saved_date_timestamp', 'bmfm_blinds_plugin_activated', 'bmfm_requested_post_id', 'bm_requested_post_id');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bmfm_blinds_product', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bmfm_blinds_product', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bmfm_blinds_product', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bmfm_blinds_product', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

