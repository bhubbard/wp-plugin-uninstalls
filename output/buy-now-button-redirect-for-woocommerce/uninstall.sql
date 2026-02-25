-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buynobur_global_redirect_type', 'buynobur_global_custom_url', 'buynobur_global_enabled', 'buynobur_target_taxonomies', 'buynobur_target_shop_archives');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buynobur_enabled', '_buynobur_redirect_type', '_buynobur_custom_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buynobur_enabled', '_buynobur_redirect_type', '_buynobur_custom_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buynobur_enabled', '_buynobur_redirect_type', '_buynobur_custom_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buynobur_enabled', '_buynobur_redirect_type', '_buynobur_custom_url');

