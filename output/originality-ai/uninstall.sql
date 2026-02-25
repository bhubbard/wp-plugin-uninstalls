-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('originalityai_admin_notice_error', 'originalityai_admin_notice_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_originalityai_scan_status', '_originalityai_scan_batch', '_originalityai_logo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_originalityai_scan_status', '_originalityai_scan_batch', '_originalityai_logo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_originalityai_scan_status', '_originalityai_scan_batch', '_originalityai_logo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_originalityai_scan_status', '_originalityai_scan_batch', '_originalityai_logo');

