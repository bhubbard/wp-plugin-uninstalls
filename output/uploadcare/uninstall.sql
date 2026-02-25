-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uploadcare_source_tabs', 'uploadcare_public', 'uploadcare_upload_lifetime', 'uploadcare_secret', 'uploadcare_cdn_base', 'uploadcare_finetuning', 'uploadcare_adaptive_delivery', 'uploadcare_blink_loader');
DELETE FROM wp_options WHERE option_name LIKE 'uploadcare_public_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uploadcare_uuid', 'uploadcare_url', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('uploadcare_uuid', 'uploadcare_url', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('uploadcare_uuid', 'uploadcare_url', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uploadcare_uuid', 'uploadcare_url', '_wp_attached_file');

