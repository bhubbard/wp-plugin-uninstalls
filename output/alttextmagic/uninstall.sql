-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alt_text_magic_account_type', 'alt_text_magic_image_credit_count', 'alt_text_magic_image_credit_limit', 'alt_text_magic_monthly_image_count', 'alt_text_magic_monthly_image_limit', 'alt_text_magic_status', 'alt_text_magic_batch_in_progress', 'alt_text_magic_batch_current_idx', 'alt_text_magic_batch_total_images', 'alt_text_magic_batch_result', 'alt_text_magic_total_images', 'alt_text_magic_images_missing_alt_text', 'alt_text_magic_bulk_suggestions', 'alt_text_magic_batch_timestamp', 'alt_text_magic_image_limit_notification_dismissed', 'alt_text_magic_invalid_api_key_notification_dismissed', 'alt_text_magic_language', 'alt_text_magic_generate_on_upload', 'alt_text_magic_api_key', 'alt_text_magic_api_key_is_invalid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

