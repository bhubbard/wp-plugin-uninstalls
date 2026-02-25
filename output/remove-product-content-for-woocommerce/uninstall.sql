-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpcfw_archive_custom_message', 'rpcfw_archive_page_message_text_color', 'rpcfw_archive_page_message_background_color', 'rpcfw_archive_page_message_text_alignment', 'rpcfw_archive_page_message_text_padding', 'rpcfw_archive_page_message_text_font_size', 'rpcfw_archive_custom_message_show_on', 'rpcfw_single_product_options', 'rpcfw_product_archive_pages_options', 'rpcfw_product_page_custom_message', 'rpcfw_product_page_message_text_color', 'rpcfw_product_page_message_background_color', 'rpcfw_product_page_message_text_alignment', 'rpcfw_product_page_message_text_padding', 'rpcfw_product_page_message_text_font_size', 'rpcfw_exclude_categories', 'rpcfw_exclude_tags', 'rpcfw_product_page_custom_message_show_on', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rpcfw_igne_noti');
DELETE FROM wp_usermeta WHERE meta_key IN ('rpcfw_igne_noti');
DELETE FROM wp_termmeta WHERE meta_key IN ('rpcfw_igne_noti');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rpcfw_igne_noti');

