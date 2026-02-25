-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopcred-settings', 'shopcred-pro-settings', 'shop-cred', 'spc_save_settings', 'shopcred_dynamic_css_time', 'Dynamic_CSS_posts', 'shopcredblocks_dynamic_css_time', 'widget_block', 'spc_do_update_redirect', 'woocommerce_placeholder_image', '__spc_asset_version', 'shopcred-dashboard-all-config-data');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spc-builder-widget-area', '_shopcred_dynamic_css_version', '_shopcred_reusable_blocks');
DELETE FROM wp_usermeta WHERE meta_key IN ('spc-builder-widget-area', '_shopcred_dynamic_css_version', '_shopcred_reusable_blocks');
DELETE FROM wp_termmeta WHERE meta_key IN ('spc-builder-widget-area', '_shopcred_dynamic_css_version', '_shopcred_reusable_blocks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spc-builder-widget-area', '_shopcred_dynamic_css_version', '_shopcred_reusable_blocks');

