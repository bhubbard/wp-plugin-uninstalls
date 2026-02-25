-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialwire_cron_token', 'pcn_generator_settings', 'pcn_generator_unique_id', 'pcn_rss_last_modified', 'pcn_rss_latest_pub_date', 'socialwire_featured_image_settings', 'socialwire_content_image_settings', 'pcn_text_settings', 'pcn_manually_deleted_document_ids', 'pcn_link_settings', 'socialwire_content_text_settings', 'socialwire_custom_field_settings', 'socialwire_cached_browser_domain', 'socialwire_rss_import_in_progress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pcn_document_id', 'pcn_url_notified', 'pcn_generated', 'pcn_eyecatch_url', 'pcn_original_image_url', 'pcn_original_attachment_id', 'pcn_manually_edited', 'pcn_manual_edit_type', 'pcn_manual_content_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('pcn_document_id', 'pcn_url_notified', 'pcn_generated', 'pcn_eyecatch_url', 'pcn_original_image_url', 'pcn_original_attachment_id', 'pcn_manually_edited', 'pcn_manual_edit_type', 'pcn_manual_content_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('pcn_document_id', 'pcn_url_notified', 'pcn_generated', 'pcn_eyecatch_url', 'pcn_original_image_url', 'pcn_original_attachment_id', 'pcn_manually_edited', 'pcn_manual_edit_type', 'pcn_manual_content_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pcn_document_id', 'pcn_url_notified', 'pcn_generated', 'pcn_eyecatch_url', 'pcn_original_image_url', 'pcn_original_attachment_id', 'pcn_manually_edited', 'pcn_manual_edit_type', 'pcn_manual_content_hash');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment_id';

