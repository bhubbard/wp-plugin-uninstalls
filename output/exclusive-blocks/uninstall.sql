-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exb_save_settings', '__exb_asset_version', 'exb_do_update_redirect', 'exclusiveblocks', 'woocommerce_shop_page_id', 'exclusiveblocks_dynamic_css_time', 'exclusiveblocks_dynamic_css_posts', 'widget_block');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exclusiveblocks_dynamic_css_version', '_exclusiveblocks_reusable_blocks', '_exclusive_blocks_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exclusiveblocks_dynamic_css_version', '_exclusiveblocks_reusable_blocks', '_exclusive_blocks_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exclusiveblocks_dynamic_css_version', '_exclusiveblocks_reusable_blocks', '_exclusive_blocks_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exclusiveblocks_dynamic_css_version', '_exclusiveblocks_reusable_blocks', '_exclusive_blocks_image_hash');

