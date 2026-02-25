-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbps_connection_status', 'wbps_webhook_url', 'wbps_woocommerce_keys', 'wbps_sheet_props', 'wbps_authcode', 'wcgs_syncback_settings', 'wcgs_metadata_keys', 'wcgs_category_tags_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wbps_row_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wbps_row_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wbps_row_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wbps_row_id');

