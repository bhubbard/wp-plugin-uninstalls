-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'dragblock/form-transient-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%--_wp_http_referer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%--_wp_http_referer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%--_wp_http_referer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%--_wp_http_referer';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-failed-email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-failed-email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-failed-email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-failed-email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-keys';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-keys';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-keys';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-keys';

