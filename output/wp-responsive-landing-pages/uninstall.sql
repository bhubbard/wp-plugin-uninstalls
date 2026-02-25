-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('settings', 'html_data', 'head_tracking_code', 'body_tracking_code', 'keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('settings', 'html_data', 'head_tracking_code', 'body_tracking_code', 'keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('settings', 'html_data', 'head_tracking_code', 'body_tracking_code', 'keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('settings', 'html_data', 'head_tracking_code', 'body_tracking_code', 'keywords');

