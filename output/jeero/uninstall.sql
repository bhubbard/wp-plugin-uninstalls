-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jeero/enable_custom_post_types', 'jeero/enable_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jeero/import/post/last_update', '_EventEndDate', '_EventShowMapLink', 'enddate', 'tickets_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('jeero/import/post/last_update', '_EventEndDate', '_EventShowMapLink', 'enddate', 'tickets_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('jeero/import/post/last_update', '_EventEndDate', '_EventShowMapLink', 'enddate', 'tickets_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jeero/import/post/last_update', '_EventEndDate', '_EventShowMapLink', 'enddate', 'tickets_status');

