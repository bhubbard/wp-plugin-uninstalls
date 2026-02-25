-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlgb_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mlgb_content_type', 'mlgb_from', 'mlgb_custom_headers', 'mlgb_attachments', 'mlgb_prevented');
DELETE FROM wp_usermeta WHERE meta_key IN ('mlgb_content_type', 'mlgb_from', 'mlgb_custom_headers', 'mlgb_attachments', 'mlgb_prevented');
DELETE FROM wp_termmeta WHERE meta_key IN ('mlgb_content_type', 'mlgb_from', 'mlgb_custom_headers', 'mlgb_attachments', 'mlgb_prevented');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mlgb_content_type', 'mlgb_from', 'mlgb_custom_headers', 'mlgb_attachments', 'mlgb_prevented');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mlgb_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mlgb_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mlgb_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mlgb_%';

