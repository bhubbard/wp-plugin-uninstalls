-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_bp3d_settings_', 'csf_demo_mode', 'panoramaUtils', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bppiv_product_', '_bp3d_product_', '_product_spot_position', '_product_spot_blocks', '_bppivimages_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bppiv_product_', '_bp3d_product_', '_product_spot_position', '_product_spot_blocks', '_bppivimages_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bppiv_product_', '_bp3d_product_', '_product_spot_position', '_product_spot_blocks', '_bppivimages_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bppiv_product_', '_bp3d_product_', '_product_spot_position', '_product_spot_blocks', '_bppivimages_');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

