-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onwebchat_plugin_option', 'onwebchat_plugin_option_api_code', 'onwebchat_plugin_option_pages_select', 'onwebchat_plugin_option_show_pages', 'onwebchat_plugin_option_hide_pages', 'onwebchat_plugin_option_user', 'onwebchat_wc_sync_enabled', 'onwebchat_wc_sync_mode', 'onwebchat_wc_sync_include_price', 'onwebchat_wc_sync_secret', 'onwebchat_wc_last_bulk_sync', 'onwebchat_wc_bulk_in_progress', 'onwebchat_wc_bulk_done', 'onwebchat_wc_bulk_total', 'onwebchat_wc_last_sync_start', 'onwebchat_wc_excluded_categories', 'onwebchat_wc_bulk_page', 'onwebchat_plugin_option_hide', 'onwebchat_wc_auth_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_onwebchat_sync_error', '_onwebchat_last_sync');
DELETE FROM wp_usermeta WHERE meta_key IN ('_onwebchat_sync_error', '_onwebchat_last_sync');
DELETE FROM wp_termmeta WHERE meta_key IN ('_onwebchat_sync_error', '_onwebchat_last_sync');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_onwebchat_sync_error', '_onwebchat_last_sync');

