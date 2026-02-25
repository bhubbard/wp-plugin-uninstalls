-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_xml_news_user_id', 'wb_xml_news_items_amount', 'wb_xml_news_cache_minutes', 'wb_xml_news_last_cache_time', 'wb_xml_news_read_all', 'wb_xml_news_last_ts', 'wb_news_xml_update_process');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('external_url', 'wb_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('external_url', 'wb_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('external_url', 'wb_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('external_url', 'wb_status');

