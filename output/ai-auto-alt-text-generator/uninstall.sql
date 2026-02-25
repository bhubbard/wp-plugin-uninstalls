-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aatg_openai_api_key', 'aatg_openai_model', 'aatg_image_size', 'aatg_image_detail', 'aatg_site_context', 'aatg_auto_title', 'aatg_send_filename', 'aatg_title_full_context', 'aatg_bulk_delay', 'aatg_bulk_batch_size', 'aatg_language');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

