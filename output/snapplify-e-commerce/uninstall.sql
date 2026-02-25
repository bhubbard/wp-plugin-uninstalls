-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcsnapplify_debug_logging', 'wcsnapplify_download_product', 'wcsnapplify_auto_publish', 'wcsnapplify_auto_unpublish_unavailable', 'wcsnapplify_manage_categories', 'wcsnapplify_last_incoming_push_time', 'wcsnapplify_strict_validation', 'wcsnapplify_token', 'wcsnapplify_last_processed_time', 'wcsnapplify_ext_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_snap_cat_id', '_product_attributes', '_snap_imageUrl', '_snap_id', '_snap_takeDown', 'snplfy_sso_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_snap_cat_id', '_product_attributes', '_snap_imageUrl', '_snap_id', '_snap_takeDown', 'snplfy_sso_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_snap_cat_id', '_product_attributes', '_snap_imageUrl', '_snap_id', '_snap_takeDown', 'snplfy_sso_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_snap_cat_id', '_product_attributes', '_snap_imageUrl', '_snap_id', '_snap_takeDown', 'snplfy_sso_id');

