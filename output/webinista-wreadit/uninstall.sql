-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webinista_wreadit_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webinista', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webinista', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webinista', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webinista', '_wp_attachment_metadata');

