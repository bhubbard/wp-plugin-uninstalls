-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_importer_for_notion_style_p', 'content_importer_for_notion_style_h1', 'content_importer_for_notion_style_h2', 'content_importer_for_notion_style_h3', 'content_importer_for_notion_style_li', 'content_importer_for_notion_style_ul', 'content_importer_for_notion_style_quote', 'content_importer_for_notion_style_hr', 'content_importer_for_notion_style_table', 'content_importer_for_notion_style_row', 'content_importer_for_notion_image_size', 'content_importer_for_notion_style_img', 'content_importer_for_notion_column_tag', 'content_importer_for_notion_style_column_div_wrapper', 'content_importer_for_notion_style_column_table', 'content_importer_for_notion_style_column_row', 'content_importer_for_notion_style_column_div', 'content_importer_for_notion_style_column_col', 'content_importer_for_notion_style_col', 'content_importer_for_notion_api_key', 'content_importer_for_notion_database_url', 'content_importer_for_notion_custom_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_importer_for_notion_cron_interval', 'notion_page_id', 'attachment_id', 'notion_object_id', 'cron_interval');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_importer_for_notion_cron_interval', 'notion_page_id', 'attachment_id', 'notion_object_id', 'cron_interval');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_importer_for_notion_cron_interval', 'notion_page_id', 'attachment_id', 'notion_object_id', 'cron_interval');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_importer_for_notion_cron_interval', 'notion_page_id', 'attachment_id', 'notion_object_id', 'cron_interval');

