-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adthrive_options', 'adthrive_ads', 'auto_update_plugins', 'wp_adthrive_updated', 'adthrive_plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adthrive_ads_disable', 'adthrive_ads_disable_content_ads', 'adthrive_ads_disable_auto_insert_videos', 'adthrive_ads_re_enable_ads_on', 'adthrive_ads_enable_admin_ads', 'adthrive_ads_disable_admin_ads', 'adthrive_ads_disable_metadata', 'adthrive_ads_enable_metadata', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('adthrive_ads_disable', 'adthrive_ads_disable_content_ads', 'adthrive_ads_disable_auto_insert_videos', 'adthrive_ads_re_enable_ads_on', 'adthrive_ads_enable_admin_ads', 'adthrive_ads_disable_admin_ads', 'adthrive_ads_disable_metadata', 'adthrive_ads_enable_metadata', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('adthrive_ads_disable', 'adthrive_ads_disable_content_ads', 'adthrive_ads_disable_auto_insert_videos', 'adthrive_ads_re_enable_ads_on', 'adthrive_ads_enable_admin_ads', 'adthrive_ads_disable_admin_ads', 'adthrive_ads_disable_metadata', 'adthrive_ads_enable_metadata', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adthrive_ads_disable', 'adthrive_ads_disable_content_ads', 'adthrive_ads_disable_auto_insert_videos', 'adthrive_ads_re_enable_ads_on', 'adthrive_ads_enable_admin_ads', 'adthrive_ads_disable_admin_ads', 'adthrive_ads_disable_metadata', 'adthrive_ads_enable_metadata', '_wp_page_template');

