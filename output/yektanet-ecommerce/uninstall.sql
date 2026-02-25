-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yektanet_app_id', 'YEKTANET_ECOMMERCE_PLUGIN_VERSION', 'active_yektanet_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yektanet_view_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('yektanet_view_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('yektanet_view_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yektanet_view_count');

