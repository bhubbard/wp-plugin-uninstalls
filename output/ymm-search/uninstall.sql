-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ymm_display_vehicle_fitment', 'ymm_enable_category_dropdowns', 'ymm_enable_search_field', 'active_sitewide_plugins', 'woocommerce_permalinks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('display_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('display_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('display_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('display_type');

