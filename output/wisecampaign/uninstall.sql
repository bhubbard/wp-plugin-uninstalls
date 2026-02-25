-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('banner_position', 'banner_type', 'wisecampaign_plugin_enabled', 'wisecampaign_selected_banner', 'wc-stockbar-status', 'wc-stockbar-setting', 'activeWiseStockbarId', 'wisecampaign_dc_settings', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wisecart_order', '_wisecart_success_viewed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wisecart_order', '_wisecart_success_viewed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wisecart_order', '_wisecart_success_viewed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wisecart_order', '_wisecart_success_viewed');

